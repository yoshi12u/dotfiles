let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ],
      \             [ 'branch' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ],
      \              [ 'pwd' ] ]
      \ },
      \ 'component': {
      \   'lineinfo': '%3l[%L]:%-2v'
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'branch': 'fugitive#statusline',
      \   'pwd': 'LightCurrentDirectory'
      \ },
      \ }

function! LightCurrentDirectory()
  return winwidth(0) > 100 ? getcwd() : ''
endfunction
