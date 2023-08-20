-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.scriptencoding = "utf-8" -- Set the script encoding to utf-8

-- Local options
local options = {
  -- General options
  encoding = "utf-8", -- Set the internal encoding
  fileencoding = "utf-8", -- Set the file encoding
  ttyfast = true, -- Enable faster TTY response
  errorbells = false, -- Disable error bells
  hidden = true, -- Enable hidden buffers
  autoread = true, -- Automatically read a file when its content changes
  backup = false, -- Disable backup files
  swapfile = false, -- Disable swap files
  writebackup = false, -- Disable backup files when writing
  mouse = "a", -- Enable mouse support for all modes
  background = "dark", -- Set the background to dark
  termguicolors = true, -- Enable true color support
  foldlevel = 99,

  -- Search options
  hlsearch = true, -- Highlight search matches
  ignorecase = true, -- Make searches case-insensitive
  smartcase = true, -- Override 'ignorecase' if search has an uppercase character

  -- Display options
  signcolumn = "yes", -- Show the signcolumn
  showtabline = 2, -- Show the tabline
  cmdheight = 2, -- Set the command-line height
  showmode = false, -- Disable showing the mode
  pumheight = 10, -- Set the maximum height of the popup menu
  cursorline = false, -- Disable cursorline highlight

  -- Tab and indent options
  expandtab = true, -- Use spaces instead of tabs
  smarttab = true, -- Use 'shiftwidth' for a tab
  softtabstop = 2, -- Use 2 spaces for a tab
  breakindent = true, -- Enable break indent

  -- Wrapping options
  whichwrap = "b,s,[,],<,>", -- Allow wrapping certain keys

  -- Clipboard options
  clipboard = "unnamedplus", -- Use the system clipboard

  -- Timing options
  timeoutlen = 500, -- Set the timeout length for mapped sequences
  updatetime = 300, -- Set the update time for swap files and CursorHold event
}

-- Apply options
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Options for appending
vim.opt.path:append({ "**" }) -- Append '**' to the search path
vim.opt.wildignore:append({ "*/node_modules/*" }) -- Ignore 'node_modules' directory in file search
vim.opt.spelllang:append("cjk") -- Add 'cjk' to the spell language
vim.opt.iskeyword:append("-") -- Add '-' to the list of keyword characters

vim.wo.number = true -- Show line numbers

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]]) -- Set the undercurl start sequence
vim.cmd([[let &t_Ce = "\e[4:0m"]]) -- Set the undercurl end sequence

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- LSP hover handler configuration
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "single",
})
