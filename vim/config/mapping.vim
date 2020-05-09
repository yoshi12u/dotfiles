let mapleader = "\<Space>"

" maps using the leader key
nmap <leader>f [finder]
nmap <leader>g [git]

" original maps
nnoremap ; :
nnoremap : ;

nnoremap L $
nnoremap H ^

nnoremap Y y$

noremap j gj
noremap k gk
nnoremap r gr

nnoremap x "_x

nnoremap tt :tabnew<CR>

nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap ｒ r
nnoremap ｘ x
nnoremap ｄｄ dd
nnoremap ｙｙ yy

inoremap <C-b> <Left>
inoremap <C-f> <Right>

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <leader>t :!
nnoremap <silent> <leader>T :!tmux split-window -v -p 27 -c $PWD<CR>

let g:nremap = {"[t": "", "]t": ""}
nnoremap <silent> ]t gt
nnoremap <silent> [t gT

nnoremap <leader>rr bufdo e!

" plug-in key maps
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga :CocCommand actions.open<CR>
nnoremap <silent> gD :CocList -A -R diagnostics<CR>
nnoremap <silent> go :CocList -A outline<CR>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
nnoremap <c-l> :CocList<CR>

let g:lsc_auto_map = {
      \ 'GoToDefinition': 'gd',
      \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
      \ 'FindReferences': 'gr',
      \ 'NextReference': ']r',
      \ 'PreviousReference': '[r',
      \ 'FindImplementations': 'gi',
      \ 'FindCodeActions': 'ga',
      \ 'Rename': '<leader>rn',
      \ 'ShowHover': 'K',
      \ 'DocumentSymbol': 'go',
      \ 'WorkspaceSymbol': 'gS',
      \ 'SignatureHelp': 'gm',
      \ 'Completion': 'completefunc',
      \}

function! s:start_coc() abort
  LSClientDisable
  CocStart
  let g:lsc_auto_map = {}
  let g:vista_default_executive = 'coc'
endfunction


function! s:start_lsc() abort
  CocDisable
  LSClientEnable
  let g:vista_default_executive = 'vim_lsc'
  let g:lsc_auto_map = {
      \ 'GoToDefinition': 'gd',
      \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
      \ 'FindReferences': 'gr',
      \ 'NextReference': ']r',
      \ 'PreviousReference': '[r',
      \ 'FindImplementations': 'gi',
      \ 'FindCodeActions': 'ga',
      \ 'Rename': '<leader>rn',
      \ 'ShowHover': 'K',
      \ 'DocumentSymbol': 'go',
      \ 'WorkspaceSymbol': 'gS',
      \ 'SignatureHelp': 'gm',
      \ 'Completion': 'completefunc',
      \}
endfunction

augroup coc
  autocmd!
  autocmd VimEnter * call s:start_coc()
augroup END


command! Lsc call s:start_lsc()
command! Coc call s:start_coc()

nnoremap <silent> <leader>qf :Qfreplace<CR>

let g:camelcasemotion_key = '<leader>'
map <silent> <leader>w <Plug>CamelCaseMotion_w
map <silent> <leader>b <Plug>CamelCaseMotion_b
map <silent> <leader>e <Plug>CamelCaseMotion_e
map <silent> <leader>ge <Plug>CamelCaseMotion_ge
sunmap <leader>w
sunmap <leader>b
sunmap <leader>e
sunmap <leader>ge
omap <silent> i<leader>w <Plug>CamelCaseMotion_iw
xmap <silent> i<leader>w <Plug>CamelCaseMotion_iw
omap <silent> i<leader>b <Plug>CamelCaseMotion_ib
xmap <silent> i<leader>b <Plug>CamelCaseMotion_ib
omap <silent> i<leader>e <Plug>CamelCaseMotion_ie
xmap <silent> i<leader>e <Plug>CamelCaseMotion_ie


nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap : <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

map R  <Plug>(operator-replace)

nnoremap U :UndotreeToggle<cr>

nnoremap <silent> <c-p> :Files<CR>
nnoremap <silent> [finder]f :Files<CR>
nnoremap <silent> [finder]s :Rg<CR>
nnoremap <silent> [finder]m :Marks<CR>
nnoremap <silent> [finder]b :Buffers<CR>

nnoremap <silent> [git]g :Gstatus<CR><C-w>T
nnoremap <silent> [git]d :Gdiff<CR>
nnoremap <silent> [git]l :Commits<CR>
" GVも使う

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><CR> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-w>l :TmuxNavigateRight<cr>

nnoremap <silent> - :CocCommand explorer<CR>

