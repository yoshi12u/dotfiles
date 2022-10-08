local opts = { noremap = true, silent = true }
local opts_noremap = { noremap = true }
local opts_silent = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", ";", ":", opts_noremap)
keymap("n", ":", ";", opts_noremap)

keymap("n", "L", "$", opts_noremap)
keymap("v", "L", "$", opts_noremap)
keymap("n", "H", "^", opts_noremap)
keymap("v", "H", "^", opts_noremap)

keymap("n", "Y", "y$", opts_noremap)

keymap("n", "あ", "a", opts_noremap)
keymap("n", "い", "i", opts_noremap)
keymap("n", "う", "u", opts_noremap)
keymap("n", "お", "o", opts_noremap)
keymap("n", "ｒ", "r", opts_noremap)
keymap("n", "ｘ", "x", opts_noremap)
keymap("n", "ｄｄ", "dd", opts_noremap)
keymap("n", "ｙｙ", "yy", opts_noremap)

keymap("n", "j", "gj", opts_silent)
keymap("n", "k", "gk", opts_silent)
keymap("n", "r", "gr", opts_silent)

keymap("i", "<c-b>", "<Left>", opts)
keymap("i", "<c-f>", "<Right>", opts)

keymap("n", "p", "p`]", opts)
keymap("v", "p", "p`]", opts)
keymap("v", "y", "y`]", opts)

keymap("n", "x", '"_x', opts)

keymap("n", "<Tab>", ":bn<CR>", opts)
keymap("n", "<S-Tab>", ":bp<CR>", opts)

keymap("n", "<CR>", "<Plug>(edgemotion-j)", opts_silent)
keymap("n", "<c-k>", "<Plug>(edgemotion-k)", opts_silent)

keymap("n", "<c-w>h", ":TmuxNavigateLeft<CR>", opts)
keymap("n", "<c-w>j", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<c-w><c-j>", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<c-w><CR>", ":TmuxNavigateDown<CR>", opts)
keymap("n", "<c-w>k", ":TmuxNavigateUp<CR>", opts)
keymap("n", "<c-w>l", ":TmuxNavigateRight<CR>", opts)

keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
keymap("n", "qf", ":Qfreplace<CR>", opts)
keymap("n", "R", "<cmd>lua require('substitute').operator()<cr>", opts)
keymap("x", "R", "<cmd>lua require('substitute').visual()<cr>", opts)

keymap(
	"",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>",
	{}
)
keymap(
	"",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>",
	{}
)
keymap(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>",
	{}
)
keymap(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>",
	{}
)

keymap("o", "m", "<C-U>lua require('tsht').nodes()<CR>", opts_noremap)
keymap("x", "m", "lua require('tsht').nodes()<CR>", opts_noremap)

keymap("n", "-", ":Lf<CR>", opts)
