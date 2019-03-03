command! Reload so $MYVIMRC
command! Vimrc cd ~/dotfiles/vim
command! Newtags call ReindexCtags()

" Index ctags from any project, including those outside Rails
function! ReindexCtags()
  let l:ctags_hook_file = "$(git rev-parse --show-toplevel)/.git/hooks/ctags"
  let l:ctags_hook_path = system("echo " . l:ctags_hook_file)
  let l:ctags_hook_path = substitute(l:ctags_hook_path, '\n\+$', '', '')

  if filereadable(expand(l:ctags_hook_path))
    exec '!'. l:ctags_hook_file
  else
    exec "!ctags -R ."
  endif
endfunction

