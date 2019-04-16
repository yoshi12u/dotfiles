" doc
Plug 'vim-jp/vimdoc-ja'
Plug 'thinca/vim-ref'

" utility
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'
Plug 'osyo-manga/vim-anzu'
Plug 'thinca/vim-qfreplace'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-dispatch'

" snippets
Plug 'honza/vim-snippets'

" style
Plug 'ayu-theme/ayu-vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'

" syntax/completion
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

" preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" commands
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
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
