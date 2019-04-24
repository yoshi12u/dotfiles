" doc
Plug 'vim-jp/vimdoc-ja'
Plug 'thinca/vim-ref'

" utility
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'
Plug 'osyo-manga/vim-anzu'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-dispatch'
Plug 'markonm/traces.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'mhinz/vim-startify'

" snippets
Plug 'honza/vim-snippets'

" style
Plug 'rakr/vim-one'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-emoji'

" ruby
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
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/vim-slash'
Plug 'mbbill/undotree'
Plug 'AndrewRadev/splitjoin.vim'

" mapping
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'

" operator
Plug 'kana/vim-operator-user'
Plug 'kana/vim-operator-replace'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'tpope/vim-surround'

" textobj
Plug 'vim-scripts/camelcasemotion'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire' " e
Plug 'kana/vim-textobj-indent' " i
Plug 'rhysd/vim-textobj-ruby' " r
Plug 'kana/vim-textobj-underscore' " _
Plug 'RyanMcG/vim-textobj-dash' " -
Plug 'thinca/vim-textobj-comment' " c
Plug 'kana/vim-textobj-function' " -f
Plug 'haya14busa/vim-textobj-function-syntax'
Plug 'wellle/targets.vim'
