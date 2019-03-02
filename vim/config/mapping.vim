let mapleader = "\<Space>"

nnoremap [finder] <Nop>
nnoremap [fugitive]  <Nop>
nnoremap [rails] <Nop>

" maps using the leader key
noremap <leader>; :Reload<CR>
nmap <leader>f [finder]
nmap <leader>k [toggle]
nmap <leader>g [fugitive]
nmap <leader>r [rails]

" original maps
nnoremap ; :
nnoremap : ;
nnoremap Y y$

noremap j gj
noremap k gk
noremap <S-Right> <C-w>>
noremap <S-Left> <C-w><
noremap <S-Up> <C-w>+
noremap <S-Down> <C-w>-
noremap <C-s>h :windo wincmd K<CR>
noremap <C-s>v :windo wincmd H<CR>

inoremap <silent> jj <Esc>

noremap! <C-b> <Left>
noremap! <C-f> <Right>

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

