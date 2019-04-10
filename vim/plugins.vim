" doc
Plug 'vim-jp/vimdoc-ja'

" utility
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'
Plug 'osyo-manga/vim-anzu'
Plug 'thinca/vim-qfreplace'
Plug 'szw/vim-tags'

" style
Plug 'ayu-theme/ayu-vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'

" syntax/completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'honza/vim-snippets'
Plug 'w0rp/ale'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }

" preview
Plug 'suan/vim-instant-markdown'

" commands
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-eunuch'
Plug 'cocopon/vaffle.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'

" mapping
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" textobj
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
