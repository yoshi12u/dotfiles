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
  call g:BuffetSetCustomColors()
endfunction

augroup Smartf
  autocmd User SmartfEnter call s:SmartfEnterHighlight()
  autocmd User SmartfLeave call s:SmartfLeaveHighlight()
augroup end

let s:blue   = [ '#61afef', 75 ]
let s:green  = [ '#98c379', 76 ]
let s:purple = [ '#c678dd', 176 ]
let s:red1   = [ '#e06c75', 168 ]
let s:red2   = [ '#be5046', 168 ]
let s:yellow = [ '#e5c07b', 180 ]
let s:yellow2 = [ '#ffe920', 184 ]
let s:brown= [ '#333300', 232 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:fg    = [ '#af87d7', 145 ]
let s:fg2    = [ '#d75fd7', 171 ]
let s:bg    = [ '#282c34', 235 ]
let s:gray1 = [ '#5c6370', 241 ]
let s:gray2 = [ '#2c323d', 235 ]
let s:gray3 = [ '#3e4452', 240 ]

let s:left2 = [ s:fg2, s:gray3, 'bold' ]
let s:left3 = [ s:yellow2, s:gray2, 'bold' ]

let s:right  = [ s:fg2, s:bg, 'bold' ]
let s:right2 = [ s:fg, s:bg ]

let s:p.inactive.left   = [ [ s:gray1,  s:bg ], [ s:gray1, s:bg ] ]
let s:p.inactive.middle = [ [ s:gray1, s:gray2 ] ]
let s:p.inactive.right  = [ [ s:gray1, s:bg ] ]

" Common
let s:p.normal.left    = [ [ s:brown, s:yellow, 'bold' ], s:left2, s:left3 ]
let s:p.normal.middle  = [ [ s:fg, s:gray2 ] ]
let s:p.normal.right   = [ s:right, s:right2, ]
let s:p.normal.error   = [ [ s:red2, s:bg ] ]
let s:p.normal.warning = [ [ s:yellow, s:bg ] ]
let s:p.insert.right   = [ s:right, s:right2, ]
let s:p.insert.left    = [ [ s:bg, s:blue, 'bold' ], s:left2, s:left3 ]
let s:p.replace.right  = [ s:right, s:right2 ]
let s:p.replace.left   = [ [ s:bg, s:red1, 'bold' ], [ s:fg, s:gray3 ] ]
let s:p.visual.right   = [ s:right, s:right2, ]
let s:p.visual.left    = [ [ s:bg, s:purple, 'bold' ], s:left2, s:left3 ]
let s:p.tabline.left   = [ [ s:fg, s:gray3 ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#custom#palette = lightline#colorscheme#flatten(s:p)

function! g:BuffetSetCustomColors()
hi! BuffetCurrentBuffer cterm=bold gui=bold ctermbg=176 ctermfg=235 guibg=#c678dd guifg=#282c34
hi! BuffetActiveBuffer cterm=NONE gui=bold ctermbg=240 ctermfg=176 guibg=#3e4452 guifg=#c678dd
hi! BuffetBuffer cterm=NONE ctermbg=235 ctermfg=145 guibg=#282c34 guifg=#af87d7
hi! BuffetTab cterm=NONE ctermbg=241 ctermfg=235 guibg=#5c6370 guifg=#282c34
endfunction

