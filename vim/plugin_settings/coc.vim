let g:coc_snippet_next = '<CR>'
let g:coc_snippet_prev = '<c-k>'
call coc#add_extension( 'coc-word', 'coc-pairs', 'coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-css', 'coc-emmet', 'coc-json', 'coc-solargraph', 'coc-yank', 'coc-vetur', 'coc-yaml', 'coc-marketplace', 'coc-tabnine')

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
