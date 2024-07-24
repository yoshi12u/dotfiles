-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- Swap ; and :
map("n", ";", ":", {
    noremap = true
})
map("n", ":", ";", {
    noremap = true
})
-- Move to start and end of line with H and L
map("n", "L", "$", {
    noremap = true
})
map("v", "L", "$", {
    noremap = true
})
map("n", "H", "^", {
    noremap = true
})
map("v", "H", "^", {
    noremap = true
})
-- Yank from cursor to end of line
map("n", "Y", "y$", {
    noremap = true
})
-- Japanese character key mappings
map("n", "あ", "a", {
    noremap = true
})
map("n", "い", "i", {
    noremap = true
})
map("n", "う", "u", {
    noremap = true
})
map("n", "お", "o", {
    noremap = true
})
map("n", "ｒ", "r", {
    noremap = true
})
map("n", "ｘ", "x", {
    noremap = true
})
map("n", "ｄｄ", "dd", {
    noremap = true,
    silent = true
})
map("n", "ｙｙ", "yy", {
    noremap = true,
    silent = true
})
-- Insert mode cursor movement
map("i", "<c-b>", "<Left>", {
    noremap = true,
    silent = true
})
map("i", "<c-f>", "<Right>", {
    noremap = true,
    silent = true
})
-- Insert mode delete and backspace
map("i", "<c-d>", "<Del>", {
    noremap = true,
    silent = true
})
map("i", "<c-h>", "<BS>", {
    noremap = true,
    silent = true
})

-- Yank and paste with automatic adjustment of cursor position
map("n", "p", "p`]", {
    noremap = true,
    silent = true
})
map("v", "p", "p`]", {
    noremap = true,
    silent = true
})
map("v", "y", "y`]", {
    noremap = true,
    silent = true
})
-- Delete without yanking
map("n", "x", '"_x', {
    noremap = true,
    silent = true
})
map("n", "<c-w><c-h>", "<c-w>h")
map("n", "<c-w><c-j>", "<c-w>j")
map("n", "<c-w><CR>", "<c-w>j")
map("n", "<c-w><c-k>", "<c-w>k")
map("n", "<c-w><c-l>", "<c-w>l")

if vim.g.vscode then
    map("n", "<leader>ff", "<cmd>Find<cr>")
    map("n", "<leader>/", [[<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>]])
    map("n", "gd", [[<cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>]])
    map("n", "gD", [[<cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<cr>]])
    map("n", "gI", [[<cmd>call VSCodeNotify('editor.action.goToImplementation')<cr>]])
    map("n", "gr", [[<cmd>call VSCodeNotify('editor.action.goToReferences')<cr>]])
    map("n", "K", [[<cmd>call VSCodeNotify('editor.action.showHover')<cr>]])
    map("n", "<leader>cr", [[<cmd>call VSCodeNotify('editor.action.rename')<cr>]])
end
