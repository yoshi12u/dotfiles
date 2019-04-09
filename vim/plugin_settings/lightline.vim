let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ],
      \             [ 'branch' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype', 'charvaluehex' ],
      \              [ 'pwd' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'StatusDiagnostic',
      \   'branch': 'fugitive#statusline',
      \   'pwd': 'LightCurrentDirectory'
      \ },
      \ }

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

function! LightCurrentDirectory()
  return winwidth(0) > 100 ? getcwd() : ''
endfunction

autocmd User CocDiagnosticChange lightline#update()
