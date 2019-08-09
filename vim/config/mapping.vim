let mapleader = "\<Space>"

" maps using the leader key
noremap <leader>; :Reload<CR>
nmap <leader>f [finder]
nmap <leader>g [git]
nmap <leader>s [substitute]
nmap <leader>a [args]
nmap <leader>j [coc]
nmap <leader>l [lang]
nmap <leader>v [visual]
nmap <leader>p [preview]

" original maps
noremap ; :

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

nnoremap <c-w><CR> <c-w>j

inoremap <silent> jj <Esc>
inoremap <silent> ｊｊ <Esc>

inoremap <C-b> <Left>
inoremap <C-f> <Right>

inoremap <F6> <C-R>=strftime("%Y/%m/%d")<CR>
nnoremap <F6> <ESC>a<C-R>=strftime("%Y/%m/%d")<CR><ESC>

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <silent> <c-\> :!tmux split-window -v -p 27 -c $PWD<CR>

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

nnoremap U :UndotreeToggle<cr>

noremap <plug>(slash-after) zz

nnoremap [lang]s :Server!<CR>
nnoremap [lang]c :Console<CR>

nnoremap [substitute]s :%S//
nnoremap <silent> [substitute]q :Qfreplace<CR>

nmap <silent> gd <Plug>(coc-definition)
nnoremap <silent> [coc]j :CocList<CR>
nnoremap <silent> [coc]<CR> :CocConfig<CR>
nnoremap <silent> [coc]y  :<C-u>CocList -A --normal yank<cr>
nnoremap <silent> [coc]c :CocList commands<CR>
nnoremap <silent> [coc]e :CocCommand snippets.editSnippets<CR>
nmap <silent> [coc]d <Plug>(coc-diagnostic-info)
nmap <silent> [coc]l <Plug>(coc-codelens-action)
nmap <silent> [coc]r <Plug>(coc-rename)

nnoremap <silent> [finder]f :Files<CR>
nnoremap <silent> [finder]s :Rg<CR>
nnoremap <silent> [finder]m :Marks<CR>
nnoremap <silent> [finder]b :Buffers<CR>
nnoremap <silent> [finder]o :CocList -A outline<CR>
nnoremap <silent> [finder]w :CocList -A -I -R words<CR>

nnoremap <silent> [git]g :Gstatus<CR><C-w>T
nnoremap <silent> [git]b :Gblame<CR>
nnoremap <silent> [git]d :Gdiff<CR>
nnoremap <silent> [git]l :Commits<CR>

nnoremap <silent> [preview]u :PlantumlOpen<CR>

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

nnoremap <silent> - :Vaffle %:p:h<CR>
nnoremap <silent> _ :Vaffle<CR>

function! s:customize_vaffle_mappings() abort
  nmap <buffer> <Bslash> <Plug>(vaffle-open-root)
  nmap <buffer> t        <Plug>(vaffle-open-current-tab)
  nmap <buffer> s        <Plug>(vaffle-open-selected-split)
  nmap <buffer> v        <Plug>(vaffle-open-selected-vsplit)
  nmap <buffer> -        <Plug>(vaffle-quit)
endfunction
augroup vimrc_vaffle
  autocmd!
  autocmd FileType vaffle call s:customize_vaffle_mappings()
augroup END
