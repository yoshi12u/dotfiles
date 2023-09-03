typeset -U PATH path

export LANG=ja_JP.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

path=("$HOME/.bin" "$HOME/.local/bin" "$path[@]")

export PATH

export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

