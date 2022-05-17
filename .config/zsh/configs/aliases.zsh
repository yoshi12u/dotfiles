alias cat="bat"
alias ls="exa --classify"
alias grep="rg"
alias diff="colordiff -u"
alias ps="procs"
alias find="fd"

alias e="$EDITOR"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
alias fpath='echo $fpath | tr -s " " "\n"'

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local

