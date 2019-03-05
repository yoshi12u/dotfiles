autoload -U history-search-end

function _hub_browse(){
  eval 'hub browse'
}

function _edit_dotfiles(){
   nvim ~/dotfiles
}

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N _hub_browse
zle -N _edit_dotfiles

# give us access to ^Q
stty -ixon

# vi mode
bindkey -v

# handy keybindings
bindkey "^[[3~" delete-char
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
bindkey "^R" history-incremental-search-backward
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^Y" accept-and-hold
# bindkey "^K" insert-last-word
bindkey "^Q" push-line-or-edit

bindkey '^IG' anyframe-widget-insert-git-branch
bindkey '^I^G' anyframe-widget-insert-git-branch

bindkey '^IF' anyframe-widget-insert-filename
bindkey '^I^F' anyframe-widget-insert-filename

bindkey '^GG' anyframe-widget-cd-ghq-repository
bindkey '^G^G' anyframe-widget-cd-ghq-repository

bindkey '^GH' _hub_browse
bindkey '^G^H' _hub_browse

bindkey '^KK' _edit_dotfiles
bindkey '^K^K' _edit_dotfiles

bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins '^F'  forward-char
bindkey -M viins '^B'  backward-char
bindkey -M viins '^?'  backward-delete-char
bindkey -M viins '^Y'  yank
