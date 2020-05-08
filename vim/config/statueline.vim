scriptencoding utf-8

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filepath', 'modified', 'method' ],
      \             [ 'branch', 'status' ],
      \             [ 'cocstatus' ]],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'pwd' ] ]
      \ },
      \ 'tabline': {
      \ 'left': [ [ 'tabs' ] ],
      \ 'right': [ [ 'close' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': '%3l[%L]:%-2v',
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction',
      \   'cocstatus': 'StatusLineCoc',
      \   'branch': 'MyStatusGit',
      \   'change': 'MyStatusGitChanges',
      \   'filepath': 'RelativePath',
      \   'pwd': 'LightCurrentDirectory',
      \ },
      \ }

function! s:IsTempFile()
  if !empty(&buftype) | return 1 | endif
  if &previewwindow | return 1 | endif
  let filename = expand('%:p')
  if filename =~# '^/tmp' | return 1 | endif
  if filename =~# '^fugitive:' | return 1 | endif
  return 0
endfunction

function! LightCurrentDirectory()
  return winwidth(0) > 100 ? getcwd() : ''
endfunction

function! RelativePath()
  let l:readonly = (&readonly ? "" : '')
  let l:ft= (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : '')
  return l:readonly . ' '. l:ft . ' '. (winwidth(0) > 100 ? expand('%:.') : expand('%:t'))
endfunction

function! NearestMethodOrFunction() abort
  return !empty(get(b:, 'vista_nearest_method_or_function', '')) ? "\uf794 ".b:vista_nearest_method_or_function : ''
endfunction

function! MyStatusGit(...) abort
  let status = get(g:, 'coc_git_status', '')
  return empty(status) ? '' : '  '.status.' '
endfunction

function! MyStatusGitChanges() abort
  if s:IsTempFile() | return '' | endif
  return get(b:, 'coc_git_status', '')
endfunction

function! StatusLineCoc() abort
  if get(g:, 'did_coc_loaded', 0)
    return coc#status()
  endif
  return ''
endfunction

function! s:SetStatusLine(...) abort
  if &previewwindow | return | endif
  if s:IsTempFile() | return | endif
  call vista#RunForNearestMethodOrFunction()
endfunction

augroup statusline
  autocmd!
  autocmd User GitGutter,Startified, call s:SetStatusLine()
  autocmd BufEnter,BufNewFile,BufReadPost,BufWritePost * call s:SetStatusLine()
  autocmd FileChangedShellPost,ColorScheme * call s:SetStatusLine()
  autocmd FileReadPre,ShellCmdPost,FileWritePost * call s:SetStatusLine()
augroup END

scriptencoding utf-8
if exists('g:loaded_eleline') || v:version < 700
  finish
endif
let g:loaded_eleline = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

let s:font = get(g:, 'eleline_powerline_fonts', get(g:, 'airline_powerline_fonts', 0))
let s:fn_icon = s:font ? get(g:, 'eleline_function_icon', " \uf794 ") : ''
let s:gui = has('gui_running')
let s:is_win = has('win32')
let s:git_branch_cmd = add(s:is_win ? ['cmd', '/c'] : ['bash', '-c'], 'git branch')
let s:git_branch_symbol = s:font ? " \ue0a0 " : ' Git:'
let s:git_branch_star_substituted = s:font ? "  \ue0a0" : '  Git:'
let s:jobs = {}

function! ElelineBufnrWinnr() abort
  let l:bufnr = bufnr('%')
  if !s:gui
    " transform to circled num: nr2char(9311 + l:bufnr)
    let l:bufnr = l:bufnr > 20 ? l:bufnr : nr2char(9311 + l:bufnr).' '
  endif
  return '  '.l:bufnr.' ❖ '.winnr().' '
endfunction

function! ElelineCurFname() abort
  return &filetype ==# 'startify' ? '' : '  '.expand('%:p:t').' '
endfunction

function! ElelineGitBranch(...) abort
  let status = get(g:, 'coc_git_status', '')
  return empty(status) ? '' : '  '.status.' '
endfunction

function! ElelineGitStatus() abort
  if s:IsTempFile() | return '' | endif
  return get(b:, 'coc_git_status', '').' '
endfunction

function! ElelineVista() abort
  return !empty(get(b:, 'vista_nearest_method_or_function', '')) ? s:fn_icon.b:vista_nearest_method_or_function : ''
endfunction

function! ElelineCoc() abort
  if get(g:, 'did_coc_loaded', 0)
    return coc#status().' '
  endif
  return ''
endfunction

function! s:def(fn) abort
  return printf('%%#%s#%%{%s()}%%*', a:fn, a:fn)
endfunction

" https://github.com/liuchengxu/eleline.vim/wiki
function! s:StatusLine() abort
  let l:bufnr_winnr = s:def('ElelineBufnrWinnr')
  let l:curfname = s:def('ElelineCurFname')
  let l:branch = s:def('ElelineGitBranch')
  let l:status = s:def('ElelineGitStatus')
  let l:coc = '%{ElelineCoc()}'
  let l:vista = '%#ElelineVista#%{ElelineVista()}%*'
  let l:prefix = l:bufnr_winnr
  let l:common = l:curfname.l:branch.l:status.l:coc.l:vista
  return l:prefix.'%<'.l:common
endfunction

let s:colors = {
            \   140 : '#af87d7', 149 : '#99cc66', 160 : '#d70000',
            \   171 : '#d75fd7', 178 : '#ffbb7d', 184 : '#ffe920',
            \   208 : '#ff8700', 232 : '#333300', 197 : '#cc0033',
            \   214 : '#ffff66', 124 : '#af3a03', 172 : '#b57614',
            \   32  : '#3a81c3', 89  : '#6c3163',
            \
            \   235 : '#262626', 236 : '#303030', 237 : '#3a3a3a',
            \   238 : '#444444', 239 : '#4e4e4e', 240 : '#585858',
            \   241 : '#606060', 242 : '#666666', 243 : '#767676',
            \   244 : '#808080', 245 : '#8a8a8a', 246 : '#949494',
            \   247 : '#9e9e9e', 248 : '#a8a8a8', 249 : '#b2b2b2',
            \   250 : '#bcbcbc', 251 : '#c6c6c6', 252 : '#d0d0d0',
            \   253 : '#dadada', 254 : '#e4e4e4', 255 : '#eeeeee',
            \ }

function! s:extract(group, what, ...) abort
  if a:0 == 1
    return synIDattr(synIDtrans(hlID(a:group)), a:what, a:1)
  else
    return synIDattr(synIDtrans(hlID(a:group)), a:what)
  endif
endfunction

if !exists('g:eleline_background')
  let s:normal_bg = s:extract('Normal', 'bg', 'cterm')
  if s:normal_bg >= 233 && s:normal_bg <= 243
    let s:bg = s:normal_bg
  else
    let s:bg = 235
  endif
else
  let s:bg = g:eleline_background
endif

" Don't change in gui mode
if has('termguicolors') && &termguicolors
  let s:bg = 235
endif

function! s:hi(group, dark, light, ...) abort
  let [fg, bg] = &background ==# 'dark' ? a:dark : a:light

  if empty(bg)
    if &background ==# 'light'
      let reverse = s:extract('StatusLine', 'reverse')
      let ctermbg = s:extract('StatusLine', reverse ? 'fg' : 'bg', 'cterm')
      let ctermbg = empty(ctermbg) ? 237 : ctermbg
      let guibg = s:extract('StatusLine', reverse ? 'fg': 'bg' , 'gui')
      let guibg = empty(guibg) ? s:colors[237] : guibg
    else
      let ctermbg = bg
      let guibg = s:colors[bg]
    endif
  else
    let ctermbg = bg
    let guibg = s:colors[bg]
  endif
  execute printf('hi %s ctermfg=%d guifg=%s ctermbg=%d guibg=%s',
                \ a:group, fg, s:colors[fg], ctermbg, guibg)
  if a:0 == 1
    execute printf('hi %s cterm=%s gui=%s', a:group, a:1, a:1)
  endif
endfunction

function! s:hi_statusline() abort
  call s:hi('ElelineBufnrWinnr' , [232 , 178]    , [89 , '']  )
  call s:hi('ElelineCurFname'   , [171 , s:bg+4] , [171 , '']     , 'bold' )
  call s:hi('ElelineGitBranch'  , [184 , s:bg+2] , [89  , '']     , 'bold' )
  call s:hi('ElelineGitStatus'  , [208 , s:bg+2] , [89  , ''])
  call s:hi('ElelineVista'      , [149 , s:bg+2] , [149 , ''])

  if &background ==# 'dark'
    call s:hi('StatusLine' , [140 , s:bg+2], [140, ''] , 'none')
  endif

  call s:hi('Eleline7'      , [249 , s:bg+3], [237, ''] )
  call s:hi('Eleline8'      , [250 , s:bg+4], [238, ''] )
  call s:hi('Eleline9'      , [251 , s:bg+5], [239, ''] )
endfunction

function! s:InsertStatuslineColor(mode) abort
  if a:mode ==# 'i'
    call s:hi('ElelineBufnrWinnr' , [251, s:bg+8] , [251, s:bg+8])
  elseif a:mode ==# 'r'
    call s:hi('ElelineBufnrWinnr' , [232, 160], [232, 160])
  else
    call s:hi('ElelineBufnrWinnr' , [232, 178], [89, ''])
  endif
endfunction

function! s:qf() abort
  let l:bufnr_winnr = s:def('ElelineBufnrWinnr')
  let &l:statusline = l:bufnr_winnr."%{exists('w:quickfix_title')? ' '.w:quickfix_title : ''} %l/%L %p"
endfunction

" Note that the "%!" expression is evaluated in the context of the
" current window and buffer, while %{} items are evaluated in the
" context of the window that the statusline belongs to.
function! s:SetStatusLine(...) abort
  let &l:statusline = s:StatusLine()
  " User-defined highlightings shoule be put after colorscheme command.
  call s:hi_statusline()
endfunction

augroup eleline
  autocmd!
  autocmd User GitGutter,Startified,LanguageClientStarted call s:SetStatusLine()
  " Change colors for insert mode
  autocmd InsertLeave * call s:hi('ElelineBufnrWinnr', [232, 178], [89, ''])
  autocmd InsertEnter,InsertChange * call s:InsertStatuslineColor(v:insertmode)
  autocmd BufEnter,BufNewFile,BufReadPost,ShellCmdPost,BufWritePost * call s:SetStatusLine()
  autocmd FileChangedShellPost,ColorScheme * call s:SetStatusLine()
  autocmd FileReadPre,ShellCmdPost,FileWritePost * call s:SetStatusLine()
  autocmd FileType qf call s:qf()
augroup END

let &cpoptions = s:save_cpo
unlet s:save_cpo
