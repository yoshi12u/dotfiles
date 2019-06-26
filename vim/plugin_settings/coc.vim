call coc#add_extension( 'https://github.com/andys8/vscode-jest-snippets.git#master', 'coc-word', 'coc-pairs', 'coc-tsserver', 'coc-css', 'coc-emmet', 'coc-snippets', 'coc-json', 'coc-solargraph', 'coc-yank', 'coc-vetur', 'coc-yaml', 'coc-marketplace')

let g:coc_snippet_next = '<CR>'
let g:coc_snippet_prev = '<c-k>'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
