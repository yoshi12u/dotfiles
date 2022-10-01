" let g:lightline#bufferline#unnamed      = '[No Name]'
" let g:lightline#bufferline#enable_devicons = 1
" let g:lightline#bufferline#read_only = ' '
" let g:lightline#bufferline#clickable = 1
"
" let g:lightline = {
"       \ 'colorscheme': 'one',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'readonly', 'filepath', 'modified', 'method' ],
"       \             [ 'branch'],
"       \             [ 'status'],
"       \             [ 'cocstatus' ]],
"       \   'right': [ [ 'lineinfo' ],
"       \              [ 'percent' ],
"       \              [ 'pwd' ] ]
"       \ },
"       \ 'tabline': {
"       \   'left': [ [ 'buffers' ] ],
"       \   'right': [ [ 'close' ] ]
"       \ },
"       \ 'component_expand': {
"       \   'buffers': 'lightline#bufferline#buffers'
"       \ },
"       \ 'component_type': {
"       \   'buffers': 'tabsel'
"       \ },
"       \ 'component_function': {
"       \   'method': 'StatuslineVista',
"       \   'readonly': 'StatuslineReadonly',
"       \   'cocstatus': 'StatuslineCoc',
"       \   'branch': 'StatuslineGitBranch',
"       \   'status': 'StatuslineGitStatus',
"       \   'filepath': 'StatuslineRelativePath',
"       \   'pwd': 'StatuslinePwd'
"       \ },
"       \ }
"
" function! StatuslineReadonly()
"   return &readonly ? '' : ''
" endfunction
"
" function! s:IsTempFile()
"   if !empty(&buftype) | return 1 | endif
"   if &previewwindow | return 1 | endif
"   let filename = expand('%:p')
"   if filename =~# '^/tmp' | return 1 | endif
"   if filename =~# '^fugitive:' | return 1 | endif
"   return 0
" endfunction
"
" function! StatuslineRelativePath() abort
"   let l:ft= (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : '')
"   return l:ft . ' '. (winwidth(0) > 100 ? expand('%:.') : expand('%:t'))
" endfunction
"
" function! StatuslinePwd()
"   return winwidth(0) > 100 ? getcwd() : ''
" endfunction
"
" function! StatuslineGitBranch(...) abort
"   let status = get(g:, 'coc_git_status', '')
"   return empty(status) ? '' : status
" endfunction
"
" function! StatuslineGitStatus() abort
"   if s:IsTempFile() | return '' | endif
"   return get(b:, 'coc_git_status', '')
" endfunction
"
" function! StatuslineVista() abort
"   return !empty(get(b:, 'vista_nearest_method_or_function', '')) ? " \uf794 ".b:vista_nearest_method_or_function : ''
" endfunction
"
" function! StatuslineCoc() abort
"   if get(g:, 'did_coc_loaded', 0)
"     return coc#status()
"   endif
"   return ''
" endfunction
