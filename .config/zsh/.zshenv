typeset -U PATH path

export LANG=ja_JP.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

path=("$HOME/.bin" "$HOME/.local/bin" "$path[@]" "$SPARK_HOME", "$JAVA_HOME", "/opt/homebrew/opt/openjdk@11/bin", "/Applications/Docker.app/Contents/Resources/bin:$PATH")
export PATH

