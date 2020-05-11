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

highlight CocHighlightText ctermfg=Red  guifg=#ff0000

function! s:SmartfEnterHighlight() abort
  syntax off
  highlight Normal ctermfg=Gray  guifg=#777777
  highlight Conceal ctermfg=Red  guifg=#ff0000 term=bold
endfunction

function! s:SmartfLeaveHighlight() abort
  colorscheme one
  syntax on
  call lightline#colorscheme()
endfunction

augroup Smartf
  autocmd User SmartfEnter call s:SmartfEnterHighlight()
  autocmd User SmartfLeave call s:SmartfLeaveHighlight()
augroup end
