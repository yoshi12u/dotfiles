eval "$(zellij setup --generate-auto-start zsh)"
eval "$(sheldon source)"
eval "$(starship init zsh)"

alias e="$EDITOR"
alias vim="nvim"
alias cat="bat"
alias ls="lsd"
alias grep="rg"
alias ps="procs"
alias find="fd"
alias cdk="npx aws-cdk"

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--ansi
--height 60% --reverse
'

bindkey -v
bindkey '^F' forward-char
bindkey '^B' backward-char

# Local config
[[ -f $ZDOTDIR/.zshrc.local ]] && source $ZDOTDIR/.zshrc.local

autoload -Uz compinit && compinit

