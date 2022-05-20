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

nnoremap <leader>rr bufdo e!

let g:nremap = {"[t": "", "]t": ""}
nnoremap <silent> ]t gt
nnoremap <silent> [t gT
nnoremap <silent> [d <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]d <Plug>(coc-diagnostic-next)
nnoremap <silent> [g <Plug>(coc-git-prevchunk)
nnoremap <silent> ]g <Plug>(coc-git-nextchunk)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
omap i<leader>w <Plug>CamelCaseMotion_iw
xmap i<leader>w <Plug>CamelCaseMotion_iw
omap i<leader>b <Plug>CamelCaseMotion_ib
xmap i<leader>b <Plug>CamelCaseMotion_ib
omap i<leader>e <Plug>CamelCaseMotion_ie
xmap i<leader>e <Plug>CamelCaseMotion_ie


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

nnoremap <leader>l :CocList<CR>
nnoremap <leader>L :CocListResume<CR>
nnoremap <leader>c :CocCommand<CR>
nnoremap <silent> <leader>a :CocCommand actions.open<CR>
nnoremap <silent> <leader>o :Vista<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>rf <Plug>(coc-refactor)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:coc_snippet_next = '<CR>'
let g:coc_snippet_prev = '<c-k>'
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


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

nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)

map R  <Plug>(operator-replace)

nnoremap U :UndotreeToggle<cr>

nnoremap <silent> <c-p> :Files<CR>
nnoremap <silent> [finder]f :Files<CR>
nnoremap <silent> [finder]s :Rg<CR>
nnoremap <silent> [finder]l :BLines<CR>
nnoremap <silent> [finder]m :Marks<CR>
nnoremap <silent> [finder]y :CocList yank<CR>
nnoremap <silent> [finder]d :CocList -A -R diagnostics<CR>

nnoremap <silent> [git]g :FloatermNew lazygit<CR>
nnoremap <silent> [git]d :CocCommand git.chunkInfo<CR>
nnoremap <silent> [git]X :CocCommand git.chunkUndo<CR>
nnoremap <silent> [git]x :CocCommand git.browserOpen<CR>

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

nnoremap <silent> <c-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w><CR> :TmuxNavigateDown<cr>
nnoremap <silent> <c-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-w>l :TmuxNavigateRight<cr>

nnoremap <silent> - :FloatermNew lf<CR>
