let g:floaterm_autoclose = 1
let g:floaterm_width = 0.8
let g:floaterm_height= 0.9
let g:floaterm_rootmarkers = ['pubspec.lock', '.project', '.git', '.hg', '.svn', '.root', '.gitignore']

let g:extra_whitespace_ignored_filetypes = ['defx', 'mkd', 'unite']

let g:rainbow_active = 1

let g:webdevicons_enable_startify = 1

let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1
let g:vista_fzf_preview = ['right:50%']

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help'
      \]

let g:peekaboo_window = 'bo 16new'

let g:sneak#use_ic_scs = 1

let g:startify_files_number = 3
let g:startify_lists = [
      \ { 'header': ['   '.emoji#for('file_folder').' MRU(pwd)'],     'type': 'dir' }
      \ ]
