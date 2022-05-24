set noswapfile
set clipboard+=unnamed
set mouse=a
set number
set cmdheight=2
set spelllang+=cjk
set hidden
set visualbell t_vb=
set noerrorbells
set whichwrap=b,s,h,l,<,>,[,] "行頭行末の左右移動で行をまたぐ
set expandtab
set smartindent
set ttyfast
set lazyredraw
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set iskeyword+=-
set noshowmode
set updatetime=300
set wildmode=longest:full,full
set hlsearch
set ignorecase
set smartcase
set wrapscan
set gdefault
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set nobackup
set nowritebackup
set signcolumn=yes
set showtabline=2
set autoread
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
let ayucolor="mirage"
colorscheme ayu

