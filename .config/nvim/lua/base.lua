vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

vim.wo.number = true

local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	ttyfast = true,
	lazyredraw = true,
	errorbells = false,
	hidden = true,
	autoread = true,
	whichwrap = "b,s,[,],<,>",
	clipboard = "unnamedplus",
	hlsearch = true,
	cursorline = true,
	signcolumn = "yes",
	showtabline = 2,
	smartcase = true,
	softtabstop = 2,
	timeoutlen = 1000,
	updatetime = 300,
	writebackup = false,
	backup = false,
	swapfile = false,
	undofile = true,
	cmdheight = 2,
	expandtab = true,
	mouse = "a",
	smarttab = true,
	breakindent = true,
	showmode = false,
	pumheight = 10,
	termguicolors = true,
	background = "dark",
}
for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.spelllang:append("cjk")
vim.opt.iskeyword:append("-")

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
