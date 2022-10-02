let g:tmux_navigator_no_mappings = 1

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

