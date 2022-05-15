autoload -U history-search-end

do-enter() {
    if [[ -n $BUFFER ]]; then
      zle accept-line
      return $status
    fi

    echo
    if [[ -d .git ]]; then
        if [[ -n "$(git status --short)" ]]; then
            git status
        fi
    else
        # do nothing
        :
    fi

    zle reset-prompt
}
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}

zle -N do-enter
zle -N fancy-ctrl-z
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end


# give us access to ^Q
stty -ixon

# vi mode
bindkey -v

# handy keybindings
bindkey "^[[3~" delete-char
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "^r" history-incremental-search-backward
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^y" accept-and-hold
bindkey "^k" insert-last-word
bindkey "^q" push-line-or-edit

bindkey '^m' do-enter

bindkey '^v' anyframe-widget-edit-yadm

bindkey '^g' anyframe-widget-cd-ghq-repository

bindkey '^xg' anyframe-widget-insert-git-branch
bindkey '^x^g' anyframe-widget-insert-git-branch

bindkey '^xf' anyframe-widget-insert-filename
bindkey '^x^f' anyframe-widget-insert-filename
bindkey '^Z' fancy-ctrl-z

bindkey -M viins "jj" vi-cmd-mode
bindkey -M viins '^f'  forward-char
bindkey -M viins '^b'  backward-char
bindkey -M viins '^?'  backward-delete-char
bindkey -M viins '^y'  yank
