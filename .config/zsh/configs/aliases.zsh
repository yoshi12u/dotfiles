alias ls="exa --classify"
alias ps="procs"
alias find="fd"
alias ll="ls -al"
alias ln="ln -v"
alias mkdir="mkdir -p"
alias e="$EDITOR"
alias v="$VISUAL"

# Pretty print the path
alias path='echo $PATH | tr -s ":" "\n"'
alias fpath='echo $fpath | tr -s " " "\n"'

# Include custom aliases
[[ -f ~/.aliases.local ]] && source ~/.aliases.local

