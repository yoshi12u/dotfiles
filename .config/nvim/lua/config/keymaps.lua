-- maps are automatically loaded on the VeryLazy event
-- Default maps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/maps.lua
-- Add any additional maps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the map if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
  end
end

local opts = {
  noremap = true,
  silent = true,
}
local opts_noremap = {
  noremap = true,
}
local opts_silent = {
  silent = true,
}

-- Swap ; and :
map("n", ";", ":", opts_noremap)
map("n", ":", ";", opts_noremap)

-- Move to start and end of line with H and L
map("n", "L", "$", opts_noremap)
map("v", "L", "$", opts_noremap)
map("n", "H", "^", opts_noremap)
map("v", "H", "^", opts_noremap)

-- Yank from cursor to end of line
map("n", "Y", "y$", opts_noremap)

-- Japanese character key mappings
map("n", "あ", "a", opts_noremap)
map("n", "い", "i", opts_noremap)
map("n", "う", "u", opts_noremap)
map("n", "お", "o", opts_noremap)
map("n", "ｒ", "r", opts_noremap)
map("n", "ｘ", "x", opts_noremap)
map("n", "ｄｄ", "dd", opts_noremap)
map("n", "ｙｙ", "yy", opts_noremap)

-- Cursor movement with wrapped lines
map("n", "j", "gj", opts_silent)
map("n", "k", "gk", opts_silent)
map("n", "r", "gr", opts_silent)

-- Insert mode cursor movement
map("i", "<c-b>", "<Left>", opts)
map("i", "<c-f>", "<Right>", opts)

-- Yank and paste with automatic adjustment of cursor position
map("n", "p", "p`]", opts)
map("v", "p", "p`]", opts)
map("v", "y", "y`]", opts)

-- Delete without yanking
map("n", "x", '"_x', opts)

if not vim.g.vscode then
  map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
  map("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
else
  map("n", "<leader>ff", "<cmd>Find<cr>")
  map("n", "<leader>fb", [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>]])
  map("n", "gd", [[<cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>]])
  map("n", "gD", [[<cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<cr>]])
  map("n", "gI", [[<cmd>call VSCodeNotify('editor.action.goToImplementation')<cr>]])
  map("n", "gr", [[<cmd>call VSCodeNotify('editor.action.goToReferences')<cr>]])
  map("n", "K", [[<cmd>call VSCodeNotify('editor.action.showHover')<cr>]])
  map("n", "<leader>r", [[<cmd>call VSCodeNotify('editor.action.rename')<cr>]])
  map("n", "<c-w><c-h>", "<c-w>h")
  map("n", "<c-w><c-j>", "<c-w>j")
  map("n", "<c-w><CR>", "<c-w>j")
  map("n", "<c-w><c-k>", "<c-w>k")
  map("n", "<c-w><c-l>", "<c-w>l")
end
