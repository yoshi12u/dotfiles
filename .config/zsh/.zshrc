source $ZDOTDIR/plugins.zsh

alias reload='source ~/.zshrc'
alias e="$EDITOR"
alias cat="bat"
alias ls="lsd"
alias grep="rg"
alias ps="procs"
alias find="fd"
alias lg='lazygit'
alias cdk="npx aws-cdk"
alias path='echo $PATH | tr -s ":" "\n"'
alias fpath='echo $fpath | tr -s " " "\n"'


export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--ansi
--height 60% --reverse
'

eval "$(zoxide init zsh --no-cmd)"
eval "$(starship init zsh)"

# Reduce key timeout to 0.1 seconds for faster mode switching
export KEYTIMEOUT=1
# Use beam shape cursor on startup.
echo -ne '\e[5 q'
# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}

bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^g' anyframe-widget-builtin-cd-ghq-repository

# Local config
[[ -f $ZDOTDIR/.zshrc.local ]] && source $ZDOTDIR/.zshrc.local

autoload -Uz compinit && compinit
