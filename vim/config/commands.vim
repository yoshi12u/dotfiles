command! Reload so $MYVIMRC
command! Vimrc cd ~/dotfiles/vim
command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --smart-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%'),
\ <bang>0)
command! -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview('right'))
