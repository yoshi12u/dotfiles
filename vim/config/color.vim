let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
endif
if (has("termguicolors"))
  set termguicolors
endif

colorscheme one
set background=dark

" ayu dark like
call one#highlight('Normal', '', '0e1318', 'none')
call one#highlight('VertSplit', '253240', '', 'none')

" compatible with vim
" call one#highlight('Normal', '', '121212', 'none')
" call one#highlight('VertSplit', '3a3a3a', '', 'none')
