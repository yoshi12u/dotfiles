require("impatient")
require("plugins")
vim.cmd("source $XDG_CONFIG_HOME/vim/vimrc")

vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({timeout=200})
  augroup END
]])
