let g:extra_whitespace_ignored_filetypes = ['defx', 'mkd', 'unite']

let g:webdevicons_enable_startify = 1
let g:startify_files_number = 5
let g:startify_lists = [
      \ { 'header': ['   '.emoji#for('file_folder').' MRU(pwd)'],     'type': 'dir' }
      \ ]

let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1
let g:vista_fzf_preview = ['right:50%']

let g:floaterm_opener='edit'
let g:floaterm_autoclose=1
let g:floaterm_rootmarkers   = ['.git']
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
augroup floaterm
  autocmd!
  " autocmd FileType floaterm tnoremap <silent> <buffer> <Esc> <C-\><c-n>:FloatermHide<CR>
augroup END

let g:rainbow_active = 1

let g:tmux_navigator_no_mappings = 1

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=Red  guifg=#ff0000 term=bold
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end

