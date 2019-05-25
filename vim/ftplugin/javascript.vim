set suffixesadd+=.js,.vue
set path+=$PWD/node_modules
set inex=substitute(v:fname,'^\\~\/','','')
let g:rooter_patterns = ['package.json', 'MIT-LICENSE', '.git/']
