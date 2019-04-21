let mapleader = "\<Space>"

nnoremap [finder] <Nop>
nnoremap [git]  <Nop>
nnoremap [substitute] <Nop>
nnoremap [args] <Nop>
nnoremap [coc] <Nop>
nnoremap [lang] <Nop>

" maps using the leader key
noremap <leader>; :Reload<CR>
nmap <leader>f [finder]
nmap <leader>g [git]
nmap <leader>s [substitute]
nmap <leader>a [args]
nmap <leader>j [coc]
nmap <leader>l [lang]

" original maps
nnoremap ; :

nnoremap Y y$

noremap j gj
noremap k gk
nnoremap r gr
nnoremap R gR

nnoremap x "_x

nnoremap tt :tabnew<CR>
nnoremap ]t gt
nnoremap [t gT

noremap <S-Right> <C-w>>
noremap <S-Left> <C-w><
noremap <S-Up> <C-w>+
noremap <S-Down> <C-w>-

nnoremap <C-j> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <CR> <C-W><C-J>

nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap ｒ r
nnoremap ｘ x
nnoremap ｄｄ dd
nnoremap ｙｙ yy

inoremap <silent> jj <Esc>
inoremap <silent> ｊｊ <Esc>

noremap! <C-b> <Left>
noremap! <C-f> <Right>

nnoremap [args]a :argadd<CR>
nnoremap [args]r :args<CR>
nnoremap [args]d :argdelete %<CR>

inoremap <F6> <C-R>=strftime("%Y/%m/%d")<CR>
nnoremap <F6> <ESC>a<C-R>=strftime("%Y/%m/%d")<CR><ESC>

xnoremap * :<c-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<c-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" plug-in key maps
nmap : <Plug>Sneak_;
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
map s <Plug>(easymotion-overwin-f)
map R  <Plug>(operator-replace)

nnoremap [lang]s :Server!<CR>
nnoremap [lang]c :Console<CR>

nnoremap [substitute]s :%S//
nnoremap <silent> [substitute]q :Qfreplace<CR>

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

nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
set statusline=%{anzu#search_status()}

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

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

