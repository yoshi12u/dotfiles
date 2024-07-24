# Reduce key timeout to 0.1 seconds for faster mode switching
export KEYTIMEOUT=1

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() { echo -ne '\e[5 q' ;}


bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down

bindkey '^g' anyframe-widget-builtin-cd-ghq-repository
bindkey '^r' anyframe-widget-put-history
