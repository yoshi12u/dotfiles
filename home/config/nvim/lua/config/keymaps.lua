-- vim.keymap.set is non-recursive (noremap) by default
local map = vim.keymap.set

-- Swap ; and :
map("n", ";", ":")
map("n", ":", ";")

-- Move to start and end of line with H and L
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")

-- Yank from cursor to end of line
map("n", "Y", "y$")

-- Insert mode cursor movement
map("i", "<c-b>", "<Left>", { silent = true })
map("i", "<c-f>", "<Right>", { silent = true })

-- Insert mode delete and backspace
map("i", "<c-d>", "<Del>", { silent = true })
map("i", "<c-h>", "<BS>", { silent = true })

-- Yank and paste with automatic adjustment of cursor position
map({ "n", "v" }, "p", "p`]", { silent = true })
map("v", "y", "y`]", { silent = true })

-- Delete without yanking
map("n", "x", '"_x', { silent = true })

-- Window navigation
map("n", "<c-w><c-h>", "<c-w>h")
map("n", "<c-w><c-j>", "<c-w>j")
map("n", "<c-w><CR>", "<c-w>j")
map("n", "<c-w><c-k>", "<c-w>k")
map("n", "<c-w><c-l>", "<c-w>l")
