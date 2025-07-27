---@module 'ai.commit_source'
local M = {}
local types = require("blink.cmp.types")

--    per-buffer cache: { [bufnr] = "commit message text" }
--    Reset on InsertLeave so each Insert-mode session gets at most one run
local cache = {}
local augroup = vim.api.nvim_create_augroup("AI_Commit_Cache", { clear = false })
vim.api.nvim_clear_autocmds({ group = augroup })
vim.api.nvim_create_autocmd("InsertLeave", {
  group = augroup,
  callback = function(ev)
    cache[ev.buf] = nil
  end,
})

function M.new(opts)
  return setmetatable({ opts = opts or {} }, { __index = M })
end

function M:enabled()
  -- filetype must be gitcommit and the current line must be empty / whitespace only
  return vim.bo.filetype == "gitcommit" and vim.api.nvim_get_current_line():match("^%s*$")
end

---@param _ any
---@param done fun(result: table)
function M:get_completions(_, done)
  local bufnr = vim.api.nvim_get_current_buf()

  --  If we already generated in this Insert session, reuse the cache
  if cache[bufnr] then
    done({
      items = {
        {
          label = cache[bufnr],
          insertText = cache[bufnr],
          kind = types.CompletionItemKind.Text,
          insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
        },
      },
      is_incomplete_forward = false,
      is_incomplete_backward = false,
    })
    return function() end --  no cancellation needed
  end

  ----------------------------------------------------------------------
  --  First call in this session to generate a commit message
  ----------------------------------------------------------------------
  vim.notify("AI-Commit: generating message…", vim.log.levels.INFO, { title = "AI-Commit" })

  local cmd = [[git diff --staged |
    claude -p "Generate only a commit message based on the staged diff, \
    following the Conventional Commits format. \
    Do not include any comments, AI signatures, or code block markers."]]

  -- async process 
  local proc = vim.system({ "bash", "-c", cmd }, { text = true }, function(out)
    -- switch back to main thread before touching UI
    vim.schedule(function()
      local msg = (out.stdout or ""):gsub("^%s+", ""):gsub("%s+$", "")
      cache[bufnr] = msg -- store for the rest of insert-mode

      vim.notify("AI-Commit: message ready", vim.log.levels.INFO, { title = "AI-Commit" })

      done({
        items = {
          {
            label = msg,
            insertText = msg,
            kind = types.CompletionItemKind.Text,
            insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
          },
        },
        is_incomplete_forward = false,
        is_incomplete_backward = false,
      })
    end)
  end)

  ----------------------------------------------------------------------
  --  return canceller so Blink can stop it if user keeps typing fast
  ----------------------------------------------------------------------
  return function()
    if proc and not proc:is_closing() then
      proc:kill("TERM")
    end
  end
end

return M