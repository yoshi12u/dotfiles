# give us access to ^Q
stty -ixon

# vi mode
bindkey -v

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# handy keybindings
bindkey "^[[3~" delete-char
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
bindkey "^R" history-incremental-search-backward
bindkey "^Y" accept-and-hold
bindkey "^K" insert-last-word
bindkey "^Q" push-line-or-edit

bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins '^F'  forward-char
bindkey -M viins '^B'  backward-char
bindkey -M viins '^?'  backward-delete-char
bindkey -M viins '^N'  down-line-or-history
bindkey -M viins '^P'  up-line-or-history
bindkey -M viins '^Y'  yank
