local map = LazyVim.safe_keymap_set

-- Swap ; and :
map("n", ";", ":", {
	noremap = true,
})
map("n", ":", ";", {
	noremap = true,
})

-- Move to start and end of line with H and L
map("n", "L", "$", {
	noremap = true,
})
map("v", "L", "$", {
	noremap = true,
})
map("n", "H", "^", {
	noremap = true,
})
map("v", "H", "^", {
	noremap = true,
})
-- Yank from cursor to end of line
map("n", "Y", "y$", {
	noremap = true,
})
-- Insert mode cursor movement
map("i", "<c-b>", "<Left>", {
	noremap = true,
	silent = true,
})
map("i", "<c-f>", "<Right>", {
	noremap = true,
	silent = true,
})
-- Insert mode delete and backspace
map("i", "<c-d>", "<Del>", {
	noremap = true,
	silent = true,
})
map("i", "<c-h>", "<BS>", {
	noremap = true,
	silent = true,
})

-- Yank and paste with automatic adjustment of cursor position
map("n", "p", "p`]", {
	noremap = true,
	silent = true,
})
map("v", "p", "p`]", {
	noremap = true,
	silent = true,
})
map("v", "y", "y`]", {
	noremap = true,
	silent = true,
})
-- Delete without yanking
map("n", "x", '"_x', {
	noremap = true,
	silent = true,
})
map("n", "<c-w><c-h>", "<c-w>h")
map("n", "<c-w><c-j>", "<c-w>j")
map("n", "<c-w><CR>", "<c-w>j")
map("n", "<c-w><c-k>", "<c-w>k")
map("n", "<c-w><c-l>", "<c-w>l")

if vim.g.vscode then
	local vscode = require("vscode")
	map("n", "<leader>ff", function()
		vscode.action("workbench.action.quickOpen")
	end)
	map("n", "<leader>/", function()
		vscode.action("workbench.action.findInFiles")
	end)
	map("n", "gd", function()
		vscode.action("editor.action.revealDefinition")
	end)
	map("n", "gD", function()
		vscode.action("editor.action.goToTypeDefinition")
	end)
	map("n", "gI", function()
		vscode.action("editor.action.goToImplementation")
	end)
	map("n", "gr", function()
		vscode.action("editor.action.goToReferences")
	end)
	map("n", "K", function()
		vscode.action("editor.action.showHover")
	end)
	map("n", "<leader>cr", function()
		vscode.action("editor.action.rename")
	end)
end
