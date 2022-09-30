let data_dir = has('nvim') ? stdpath('data') . '/site' : $XDG_CONFIG_HOME . '/vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" doc
Plug 'vim-jp/vimdoc-ja'
Plug 'thinca/vim-ref'

" utility
" Plug 'sheerun/vim-polyglot'
let g:coc_start_at_startup = v:false

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'airblade/vim-rooter'
Plug 'osyo-manga/vim-anzu'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'markonm/traces.vim'
Plug 'kshenoy/vim-signature'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vista.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/goyo.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'haya14busa/vim-edgemotion'

" style
Plug 'vim-scripts/AnsiEsc.vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'junegunn/vim-emoji'
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'

" preview
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'

" git
" Plug 'tpope/vim-fugitive'

" commands
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-abolish'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-unimpaired'
Plug 'thinca/vim-visualstar'
Plug 'mbbill/undotree'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/switch.vim'

" mapping
Plug 'houtsnip/vim-emacscommandline'
Plug 'bronson/vim-visual-star-search'
Plug 'christoomey/vim-tmux-navigator'


" html
Plug 'AndrewRadev/tagalong.vim', {'for': 'html'}
Plug 'mattn/emmet-vim', { 'for': ['js', 'ts', 'jsx', 'tsx', 'vue'] }

" ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }

" node
Plug 'moll/vim-node', { 'for': ['js', 'ts', 'jsx', 'tsx', 'vue'] }

" dart
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }
Plug 'reisub0/hot-reload.vim', {'for': 'dart'}
Plug 'natebosch/vim-lsc', {'for': 'dart'}
Plug 'natebosch/vim-lsc-dart', {'for': 'dart'}

" vue
Plug 'posva/vim-vue', {'for': 'vue'}

call plug#end()

