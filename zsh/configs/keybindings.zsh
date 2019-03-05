autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

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
bindkey "^K" insert-last-word
bindkey "^Q" push-line-or-edit

bindkey '^fg' anyframe-widget-insert-git-branch
bindkey '^f^g' anyframe-widget-insert-git-branch

bindkey '^ff' anyframe-widget-insert-filename
bindkey '^f^f' anyframe-widget-insert-filename

bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins '^F'  forward-char
bindkey -M viins '^B'  backward-char
bindkey -M viins '^?'  backward-delete-char
bindkey -M viins '^Y'  yank
