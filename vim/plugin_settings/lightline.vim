let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filepath', 'modified' ],
      \             [ 'branch' ],
      \             [ 'cocstatus' ],
      \             [ 'anzu' ]],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ],
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
      \   'cocstatus': 'coc#status',
      \   'branch': 'fugitive#statusline',
      \   'filepath': 'RelativePath',
      \   'pwd': 'LightCurrentDirectory',
      \   'anzu': 'anzu#search_status',
      \ },
      \ }

function! LightCurrentDirectory()
  return winwidth(0) > 100 ? getcwd() : ''
endfunction

function! RelativePath()
  return winwidth(0) > 100 ? expand('%:.') : expand('%:t')
endfunction
set statusline=%{anzu#search_status()}
