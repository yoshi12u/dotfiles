set nocompatible
filetype off
filetype plugin indent off
set noswapfile
set clipboard+=unnamed
" set mouse=a
set number
set cmdheight=2
set spelllang+=cjk
set nrformats=
set hidden
set autoread
set visualbell t_vb=
set noerrorbells
set whichwrap=b,s,h,l,<,>,[,] "行頭行末の左右移動で行をまたぐ
set scrolloff=2 "上下の視界を確保
set sidescrolloff=4 "左右スクロールの視界を確保
set sidescroll=1 "左右のスクロールは1文字ずつ
set wildmenu wildmode=list:longest,full
set expandtab
set autoindent
set smartindent
set history=10000
set ttyfast
set lazyredraw
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set iskeyword+=-
set laststatus=2
set noshowmode
set updatetime=300
set wildmode=longest:full,full
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif
syntax on
filetype plugin indent on

