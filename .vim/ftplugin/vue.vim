source ~/.vim/ftplugin/javascript.vim
set suffixesadd+=.ts,.js,.vue
set path+=$PWD/node_modules
set inex=substitute(v:fname,'^\\~','.','')
let g:context#commentstring#table.vue = {
			\ 'javaScript'  : '//%s',
			\ 'cssStyle'    : '/*%s*/',
			\ 'vue_typescript'  : '//%s'
			\}
