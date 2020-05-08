let g:lightline = {
      \ 'colorscheme': 'eleline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filepath', 'modified', 'method' ],
      \             [ 'branch'],
      \             [ 'status'],
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
      \   'branch': 'StatuslineGitBranch',
      \   'method': 'StatuslineVista',
      \   'cocstatus': 'StatuslineCoc',
      \   'status': 'StatuslineGitStatus',
      \   'filepath': 'StatuslineCurFname',
      \   'pwd': 'StatuslinePwd',
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

function! StatuslinePwd()
  return winwidth(0) > 100 ? getcwd() : ''
endfunction

function! StatuslineCurFname() abort
  let l:readonly = (&readonly ? "" : '')
  let l:ft= (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : '')
  return l:readonly . ' '. l:ft . ' '. (winwidth(0) > 100 ? expand('%:.') : expand('%:t'))
endfunction

function! StatuslineGitBranch(...) abort
  let status = get(g:, 'coc_git_status', '')
  return empty(status) ? '' : status
endfunction

function! StatuslineGitStatus() abort
  if s:IsTempFile() | return '' | endif
  return get(b:, 'coc_git_status', '')
endfunction

function! StatuslineVista() abort
  return !empty(get(b:, 'vista_nearest_method_or_function', '')) ? " \uf794 ".b:vista_nearest_method_or_function : ''
endfunction

function! StatuslineCoc() abort
  if get(g:, 'did_coc_loaded', 0)
    return coc#status()
  endif
  return ''
endfunction

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
let s:right2 = [ s:fg, s:gray3 ]

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

let g:lightline#colorscheme#eleline#palette = lightline#colorscheme#flatten(s:p)

