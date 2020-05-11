let mapleader = "\<Space>"

" maps using the leader key
nmap <leader>f [finder]
nmap <leader>g [git]

" original maps
nnoremap ; :
nnoremap : ;

nnoremap L $
vnoremap L $
nnoremap H ^
vnoremap H ^

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

nnoremap <silent> <c-t> :FloatermToggle<CR>
nnoremap <silent> <leader>t :FloatermNew<CR>

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
" Symbol renaming.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
nnoremap <leader>l :CocList<CR>
nnoremap <leader>L :CocListResume<CR>
nnoremap <leader>c :CocCommand<CR>
nnoremap <leader>a :CocAction<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> ga :CocCommand actions.open<CR>
nnoremap <silent> gD :CocList -A -R diagnostics<CR>
nnoremap <silent> go :CocList -A outline<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

let g:coc_snippet_next = '<CR>'
let g:coc_snippet_prev = '<c-k>'

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'

function! s:start_coc()
  let g:vista_default_executive = 'coc'
  let g:lsc_auto_map = {}
  call coc#config('diagnostic', {
        \ 'enable': 1,
        \})
  let l:lsc_status = LSCServerStatus()
  if (lsc_status == 'running')
    LSClientDisable
  endif
endfunction

function! s:start_lsc()
  let g:vista_default_executive = 'vim_lsc'
  let g:lsc_auto_map = {
        \ 'defaults': v:true,
        \ 'NextReference': ']r',
        \ 'PreviousReference': '[r',
        \ 'GoToDefinition': 'gd',
        \ 'FindImplementations': 'gi',
        \ 'Rename': '<leader>rn',
        \}
  call coc#config('diagnostic', {
        \ 'enable': 0,
        \})
  let l:lsc_status = LSCServerStatus()
  if (l:lsc_status != 'running')
    LSClientEnable
  endif
endfunction

function! s:mode_change()
  if (&filetype ==# 'dart')
    call s:start_lsc()
  else
    call s:start_coc()
  endif
endfunction

augroup mode_change
  autocmd!
  autocmd bufenter * call s:mode_change()
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
nnoremap <silent> [finder]t :CocList floaterm<CR>

nnoremap <silent> [git]g :Gstatus<CR><C-w>T
nnoremap <silent> [git]d :CocCommand git.chunkInfo<CR>
nnoremap <silent> [git]l :Commits<CR>
nnoremap <silent> [git]c :CocCommand git.showCommit<CR>
nnoremap <silent> [git]X :CocCommand git.chunkUndo<CR>
nnoremap <silent> [git]x :CocCommand git.browserOpen<CR>

" GVも使う

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><CR> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-w>l :TmuxNavigateRight<cr>

nnoremap <silent> - :CocCommand explorer<CR>

augroup floaterm
  autocmd!
  autocmd FileType floaterm tnoremap <silent> <buffer> <Esc> <C-\><c-n>:FloatermHide<CR>
augroup END

