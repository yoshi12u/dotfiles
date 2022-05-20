let data_dir = has('nvim') ? stdpath('data') . '/site' : $XDG_CONFIG_HOME . '/vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" doc
Plug 'vim-jp/vimdoc-ja'
Plug 'thinca/vim-ref'

" sanitize
Plug 'tpope/vim-sensible'

" utility
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-rooter'
Plug 'osyo-manga/vim-anzu'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-dispatch'
Plug 'markonm/traces.vim'
Plug 'kshenoy/vim-signature'
Plug 'bagrat/vim-buffet'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vista.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'voldikss/vim-floaterm'

" snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'honza/vim-snippets'

" style
Plug 'ayu-theme/ayu-vim'
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-emoji'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'

" preview
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'

" git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" commands
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-abolish'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-unimpaired'
Plug 'thinca/vim-visualstar'
Plug 'mbbill/undotree'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'brooth/far.vim'
Plug 'AndrewRadev/switch.vim'

" mapping
Plug 'tpope/vim-repeat'
Plug 'houtsnip/vim-emacscommandline'
Plug 'bronson/vim-visual-star-search'
Plug 'christoomey/vim-tmux-navigator'

" operator
Plug 'kana/vim-operator-user'
Plug 'kana/vim-operator-replace'
Plug 'tpope/vim-commentary'
Plug 'suy/vim-context-commentstring'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'junegunn/vim-easy-align'

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

" ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-bundler'

" node
Plug 'moll/vim-node'

" dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'reisub0/hot-reload.vim'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

" vue
Plug 'posva/vim-vue'

call plug#end()

