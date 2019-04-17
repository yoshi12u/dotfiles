source ~/.vim/ftplugin/javascript.vim
set suffixesadd+=.js,.vue
set path+=$PWD/node_modules
set inex=substitute(v:fname,'^\\~','.','')
