" let data_dir = has('nvim') ? stdpath('data') . '/site' : $XDG_CONFIG_HOME . '/vim'
" if empty(glob(data_dir . '/autoload/plug.vim'))
"   silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif
"
" call plug#begin()
"
" " doc
" Plug 'vim-jp/vimdoc-ja'
" Plug 'thinca/vim-ref'
"
" " utility
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug '/opt/homebrew/opt/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'antoinemadec/coc-fzf'
" Plug 'airblade/vim-rooter'
" Plug 'osyo-manga/vim-anzu'
" Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'mhinz/vim-startify'
" Plug 'liuchengxu/vista.vim'
" Plug 'bronson/vim-trailing-whitespace'
" Plug 'voldikss/vim-floaterm'
" Plug 'junegunn/goyo.vim'
" Plug 'machakann/vim-highlightedyank'
" Plug 'haya14busa/vim-edgemotion'
"
" " snippets
" Plug 'hrsh7th/vim-vsnip'
" Plug 'hrsh7th/vim-vsnip-integ'
" Plug 'honza/vim-snippets'
"
" " style
" Plug 'ayu-theme/ayu-vim'
" Plug 'vim-scripts/AnsiEsc.vim'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'
" Plug 'ap/vim-css-color'
" Plug 'junegunn/vim-emoji'
" Plug 'ryanoasis/vim-devicons'
" Plug 'luochen1990/rainbow'
"
" " preview
" Plug 'weirongxu/plantuml-previewer.vim'
" Plug 'aklt/plantuml-syntax'
" Plug 'tyru/open-browser.vim'
"
" " git
" Plug 'tpope/vim-fugitive'
"
" " commands
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-abolish'
" Plug 'thinca/vim-qfreplace'
" Plug 'tpope/vim-unimpaired'
" Plug 'thinca/vim-visualstar'
" Plug 'mbbill/undotree'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'AndrewRadev/switch.vim'
"
" " mapping
" Plug 'tpope/vim-repeat'
" Plug 'houtsnip/vim-emacscommandline'
" Plug 'bronson/vim-visual-star-search'
" Plug 'christoomey/vim-tmux-navigator'
"
" " operator
" Plug 'kana/vim-operator-user'
" Plug 'kana/vim-operator-replace'
" Plug 'tpope/vim-commentary'
" Plug 'suy/vim-context-commentstring'
" Plug 'tpope/vim-surround'
" Plug 'tommcdo/vim-exchange'
" Plug 'junegunn/vim-easy-align'
"
" call plug#end()
"
