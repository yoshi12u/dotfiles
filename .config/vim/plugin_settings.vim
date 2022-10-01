let g:webdevicons_enable_startify = 1
let g:startify_files_number = 5
let g:startify_lists = [
      \ { 'header': ['   '.emoji#for('file_folder').' MRU(pwd)'],     'type': 'dir' }
      \ ]

 let g:coc_start_at_startup = v:false
let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1
let g:vista_fzf_preview = ['right:50%']

let g:floaterm_opener='edit'
let g:floaterm_autoclose=1
let g:floaterm_rootmarkers   = ['.git']
let g:floaterm_width = 0.9
let g:floaterm_height = 0.7

let g:tmux_navigator_no_mappings = 1

augroup floaterm
  autocmd!
  autocmd FileType floaterm IndentBlanklineDisable
  autocmd QuitPre * FloatermKill!
augroup END

augroup startify
  autocmd!
  autocmd FileType startify IndentBlanklineDisable
augroup END

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

