let g:floaterm_autoclose = 1
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

function! s:goyo_enter()
  set spell
  set noci
  set nosi
  set noshowmode
  set noshowcmd
  set bg=light
  set linebreak
  if !has('gui_running')
    let g:solarized_termcolors=256
  endif
  colors solarized
endfunction
function! s:goyo_leave()
	colorscheme one
	set background=dark
	call one#highlight('Normal', '', '0e1318', 'none')
	call one#highlight('VertSplit', '253240', '', 'none')
  set ci
  set si
  set nospell
  set showmode
  set showcmd
  set nolinebreak
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

