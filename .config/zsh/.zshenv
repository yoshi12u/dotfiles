typeset -U PATH path

export LANG=ja_JP.UTF-8

export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export RIPGREP_CONFIG_PATH=""

path=("$HOME/.bin" "$path[@]")
export PATH

