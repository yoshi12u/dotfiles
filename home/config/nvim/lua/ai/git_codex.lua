---@module 'ai.git_codex'
local M = {}

local types = require("blink.cmp.types")

local function repo_root(bufnr)
	-- Try to anchor the Git commands to the buffer's directory.
	local path = vim.api.nvim_buf_get_name(bufnr or 0)
	if path == "" then
		return nil
	end

	local dir = vim.fs.dirname(path)
	local marker = vim.fs.find(".git", { upward = true, path = dir })[1]
	if not marker then
		return nil
	end

	-- `.git` is a directory in a normal checkout and a file in worktrees
	-- and submodules; either way, its parent is the repository root.
	return vim.fs.dirname(marker)
end

local function empty_response()
	return {
		items = {},
		is_incomplete_forward = false,
		is_incomplete_backward = false,
	}
end

local function with_defaults(opts)
	opts = opts or {}
	local default = {
		-- Maximum number of characters taken from `git diff --cached`
		max_diff_chars = 6000,
	}
	return vim.tbl_deep_extend("force", default, opts)
end

function M.new(opts)
	return setmetatable({ opts = with_defaults(opts) }, { __index = M })
end

-- Decide if this source should be active for the current buffer
function M:enabled()
	-- Only used in git commit message buffers
	if vim.bo.filetype ~= "gitcommit" then
		return false
	end

	-- Only run inside a Git work tree detected from this buffer
	if not repo_root(0) then
		return false
	end

	-- Require the `codex` CLI to be available
	if vim.fn.executable("codex") ~= 1 then
		return false
	end

	return true
end

---@param ctx blink.cmp.Context
---@param done fun(result: table)
function M:get_completions(ctx, done)
	local bufnr = vim.api.nvim_get_current_buf()
	local root = repo_root(bufnr)

	-- Show suggestions only when the user is about to write the summary:
	-- first line of the commit message and still empty.
	local row = ctx.cursor[1]
	if row ~= 1 then
		done(empty_response())
		return function() end
	end

	local line = vim.api.nvim_get_current_line()
	if vim.trim(line) ~= "" then
		done(empty_response())
		return function() end
	end

	local max_chars = tonumber(self.opts.max_diff_chars) or 6000
	if max_chars <= 0 then
		max_chars = 6000
	end

	-- Prompt for Conventional Commits-style titles
	local prompt = table.concat({
		"You are an assistant that writes concise Git commit titles.",
		"Use Conventional Commits style when possible, starting each line with a type such as",
		"feat:, fix:, chore:, docs:, refactor:, test:, perf:, build:, or ci:.",
		"Each suggestion must:",
		"- be a single-line commit title under about 72 characters,",
		"- be written in English and in the imperative mood,",
		"- not contain bullets, numbering, extra commentary, or Markdown.",
		"Given the following git status summary and staged diff,",
		"generate up to three different commit titles.",
		"Output only the titles, one per line.",
	}, " ")

	-- Combine git status and staged diff, trimming the diff to a safe length
	local cmd = string.format(
		[[(git status --short --branch; printf '\n\n'; git diff --cached | head -c %d) | codex exec %q]],
		max_chars,
		prompt
	)

	vim.notify("AI-Git: asking Codex from git status + diff…", vim.log.levels.INFO, { title = "AI-Git" })

	local proc = vim.system({ "bash", "-c", cmd }, { text = true, cwd = root }, function(out)
		vim.schedule(function()
			if out.code ~= 0 then
				local stderr = vim.trim(out.stderr or "")
				local msg = ("AI-Git: Codex request failed (exit %d)"):format(out.code or -1)
				if stderr ~= "" then
					msg = msg .. ": " .. stderr
				end
				vim.notify(msg, vim.log.levels.WARN, { title = "AI-Git" })
				done(empty_response())
				return
			end

			local stdout = out.stdout or ""
			local lines = {}

			-- Collect non-empty lines as candidate commit titles
			for l in stdout:gmatch("[^\r\n]+") do
				local text = vim.trim(l)
				if #text > 0 then
					table.insert(lines, text)
				end
			end

			if #lines == 0 then
				vim.notify("AI-Git: Codex returned no text", vim.log.levels.WARN, { title = "AI-Git" })
				done(empty_response())
				return
			end

			local items = {}
			for _, text in ipairs(lines) do
				table.insert(items, {
					label = text,
					insertText = text,
					kind = types.CompletionItemKind.Text,
					insertTextFormat = vim.lsp.protocol.InsertTextFormat.PlainText,
				})
			end

			vim.notify("AI-Git: Codex suggestions ready", vim.log.levels.INFO, { title = "AI-Git" })

			done({
				items = items,
				is_incomplete_forward = false,
				is_incomplete_backward = false,
			})
		end)
	end)

	-- Allow blink.cmp to cancel the running Codex process
	return function()
		if proc and not proc:is_closing() then
			proc:kill("TERM")
		end
	end
end

return M
