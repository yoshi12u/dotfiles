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


augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=Red  guifg=#ff0000 term=bold
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end

