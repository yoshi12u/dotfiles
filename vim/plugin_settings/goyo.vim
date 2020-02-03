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
