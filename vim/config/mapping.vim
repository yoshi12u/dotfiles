let mapleader = "\<Space>"

nnoremap [vim] <Nop>
nnoremap [finder] <Nop>
nnoremap [fugitive]  <Nop>
nnoremap [rails] <Nop>
nnoremap [ultisnips] <Nop>
nnoremap [substitute] <Nop>

" maps using the leader key
noremap <leader>; :Reload<CR>
nmap <leader>f [finder]
nmap <leader>k [toggle]
nmap <leader>g [fugitive]
nmap <leader>r [rails]
nmap <leader>u [ultisnips]
nmap <leader>v [vim]
nmap <leader>s [substitute]

" original maps
noremap ; :
noremap : ;

nnoremap Y y$

noremap j gj
noremap k gk
nnoremap r gr
nnoremap R gR

nnoremap x "_x

noremap <S-Right> <C-w>>
noremap <S-Left> <C-w><
noremap <S-Up> <C-w>+
noremap <S-Down> <C-w>-

nnoremap <CR> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <silent> jj <Esc>

noremap! <C-b> <Left>
noremap! <C-f> <Right>

nnoremap [substitute]s :%S//

inoremap <F6> <C-R>=strftime("%Y/%m/%d")<CR>
nnoremap <F6> <ESC>a<C-R>=strftime("%Y/%m/%d")<CR><ESC>

nnoremap <silent> [vim]s <c-w><c-v><c-w><c-l>:Vaffle ~/.vim<CR> cd ~/.vim<CR>

xnoremap * :<c-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<c-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>


" plug-in key maps
map s <Plug>(easymotion-overwin-f2)

nnoremap - :Vaffle<CR>
function! s:customize_vaffle_mappings() abort
  nmap <buffer> <Bslash> <Plug>(vaffle-open-root)
  nmap <buffer> t        <Plug>(vaffle-open-current-tab)
  nmap <buffer> s        <Plug>(vaffle-open-selected-split)
  nmap <buffer> v        <Plug>(vaffle-open-selected-vsplit)
endfunction
augroup vimrc_vaffle
  autocmd!
  autocmd FileType vaffle call s:customize_vaffle_mappings()
augroup END

nnoremap <silent> <leader>p :PrevimOpen<CR>

nnoremap <silent> [ultisnips]u :UltiSnipsEdit<CR>

nnoremap <silent> [substitute]q :Qfreplace<CR>

nnoremap <silent> [finder]f :Files<CR>
nnoremap <silent> [finder]b :Buffers<CR>
nnoremap <silent> [finder]w :Windows<CR>
nnoremap [finder]s :Ack! <Space>

nnoremap <silent> [fugitive]g :Gstatus<CR><C-w>T
nnoremap <silent> [fugitive]a :Gwrite<CR>
nnoremap <silent> [fugitive]c :Gcommit-v<CR>
nnoremap <silent> [fugitive]b :Gblame<CR>
nnoremap <silent> [fugitive]d :Gdiff<CR>
nnoremap <silent> [fugitive]m :Gmerge<CR>
nnoremap <silent> [fugitive]l :Git log<CR>
nnoremap <silent> [fugitive]p :Gpush origin HEAD<CR>

nnoremap [rails]v :Eview
nnoremap <silent> [rails]m :Emodel<CR>
nnoremap <silent> [rails]c :Econtroller<CR>
nnoremap <silent> [rails]s :Rserver -d<CR>
nnoremap <silent> [rails]S :Rserver! -d<CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
