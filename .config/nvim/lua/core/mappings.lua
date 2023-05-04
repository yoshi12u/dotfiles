local opts = {
    noremap = true,
    silent = true
}
local opts_noremap = {
    noremap = true
}
local opts_silent = {
    silent = true
}

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear default <Space> mapping
keymap("", "<Space>", "<Nop>", opts)

-- Swap ; and :
keymap("n", ";", ":", opts_noremap)
keymap("n", ":", ";", opts_noremap)

-- Move to start and end of line with H and L
keymap("n", "L", "$", opts_noremap)
keymap("v", "L", "$", opts_noremap)
keymap("n", "H", "^", opts_noremap)
keymap("v", "H", "^", opts_noremap)

-- Yank from cursor to end of line
keymap("n", "Y", "y$", opts_noremap)

-- Japanese character key mappings
keymap("n", "あ", "a", opts_noremap)
keymap("n", "い", "i", opts_noremap)
keymap("n", "う", "u", opts_noremap)
keymap("n", "お", "o", opts_noremap)
keymap("n", "ｒ", "r", opts_noremap)
keymap("n", "ｘ", "x", opts_noremap)
keymap("n", "ｄｄ", "dd", opts_noremap)
keymap("n", "ｙｙ", "yy", opts_noremap)

-- Cursor movement with wrapped lines
keymap("n", "j", "gj", opts_silent)
keymap("n", "k", "gk", opts_silent)
keymap("n", "r", "gr", opts_silent)

-- Insert mode cursor movement
keymap("i", "<c-b>", "<Left>", opts)
keymap("i", "<c-f>", "<Right>", opts)

-- Yank and paste with automatic adjustment of cursor position
keymap("n", "p", "p`]", opts)
keymap("v", "p", "p`]", opts)
keymap("v", "y", "y`]", opts)

-- Delete without yanking
keymap("n", "x", '"_x', opts)

-- Buffer navigation
keymap("n", "<Tab>", ":bn<CR>", opts)
keymap("n", "<S-Tab>", ":bp<CR>", opts)

-- Edgemotion plugin mappings
keymap("n", "<CR>", "<Plug>(edgemotion-j)", opts_silent)
keymap("n", "<c-k>", "<Plug>(edgemotion-k)", opts_silent)

-- Substitute plugin mappings
keymap("n", "R", "<cmd>lua require('substitute').operator()<cr>", opts)
keymap("x", "R", "<cmd>lua require('substitute').visual()<cr>", opts)

-- Hop plugin mappings
keymap("", "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>",
    {})
keymap("", "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>",
    {})
keymap("", "t",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>",
    {})
keymap("", "T",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>",
    {})

-- Only for native Neovim
if not vim.g.vscode then
    -- Tree-sitter highlighting text object mappings
    keymap("o", "m", "<C-U>lua require('tsht').nodes()<CR>", opts_noremap)
    keymap("x", "m", "lua require('tsht').nodes()<CR>", opts_noremap)

    -- Tmux navigator mappings
    keymap("n", "<c-w>h", ":TmuxNavigateLeft<CR>", opts)
    keymap("n", "<c-w>j", ":TmuxNavigateDown<CR>", opts)
    keymap("n", "<c-w><c-j>", ":TmuxNavigateDown<CR>", opts)
    keymap("n", "<c-w><CR>", ":TmuxNavigateDown<CR>", opts)
    keymap("n", "<c-w>k", ":TmuxNavigateUp<CR>", opts)
    keymap("n", "<c-w>l", ":TmuxNavigateRight<CR>", opts)

    -- LSP hover mapping
    keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)

    -- Qfreplace plugin mapping
    keymap("n", "qf", ":Qfreplace<CR>", opts)

    -- Lf plugin mapping
    keymap("n", "-", ":Lf<CR>", opts)

end

