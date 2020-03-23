let mapleader = "\<Space>"

" maps using the leader key
nmap <leader>f [finder]
nmap <leader>g [git]
nmap <leader>s [substitute]
nmap <leader>a [args]
nmap <leader>j [jump]
nmap <leader>v [visual]
nmap <leader>p [preview]
nmap <leader>e [E]
nmap <leader>r [rails]

" original maps
noremap <silent> <leader>; :e!<CR>

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
nnoremap <silent> [t gT
nnoremap <silent> ]t gt

" plug-in key maps
map : <Plug>Sneak_;
nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

map s <Plug>(easymotion-overwin-f2)
map S <Plug>(easymotion-overwin-f)
map R  <Plug>(operator-replace)
nmap <silent> r<CR> <Plug>(coc-rename)

nnoremap U :UndotreeToggle<cr>

noremap <plug>(slash-after) zz

nnoremap <silent> [substitute]s :Switch<CR>
nnoremap <silent> [substitute]q :Qfreplace<CR>

nmap <silent> <C-]> <Plug>(coc-definition)
nnoremap <silent> [jump]j <Plug>(coc-definition)
nnoremap <silent> [jump]t <Plug>(coc-type-definition)
nnoremap <silent> [jump]i <Plug>(coc-implementation)
nnoremap <silent> [jump]r <Plug>(coc-references)
nnoremap <silent> [jump]<CR> :CocConfig<CR>

nnoremap <silent> [finder]f :Files<CR>
nnoremap <silent> [finder]s :Rg<CR>
nnoremap <silent> [finder]m :Marks<CR>
nnoremap <silent> [finder]b :Buffers<CR>
nnoremap <silent> [finder]o :CocList -A outline<CR>
nnoremap <silent> [finder]d :CocList -A -R diagnostics<CR>

nnoremap <silent> [git]g :Gstatus<CR><C-w>T
nnoremap <silent> [git]d :Gdiff<CR>
nnoremap <silent> [git]l :Commits<CR>

nnoremap <silent> [E]m :Emodel<CR>
nnoremap <silent> [E]c :Econtroller<CR>
nnoremap <silent> [E]p :Epolicy<CR>
nnoremap <silent> [E]s :Eserializer<CR>

nnoremap [rails]g :Generate 
nnoremap [rails]d :Destroy 
nnoremap [rails]s :Server!<CR>
nnoremap [rails]c :Console<CR>

nnoremap <silent> [preview]u :PlantumlOpen<CR>

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

function! s:customize_dirvish_mappings() abort
  nmap <buffer> s        o
  nmap <buffer> v        a
  nmap <buffer> l        <CR>
  nmap <buffer> h        <Plug>(dirvish_up)
  nmap <buffer> -        <Plug>(dirvish_quit)
  nmap <buffer> q        <Plug>(dirvish_quit)
endfunction
augroup vimrc_explorer
  autocmd!
  autocmd FileType dirvish call s:customize_dirvish_mappings()
augroup END

