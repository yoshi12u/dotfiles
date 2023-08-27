typeset -U PATH path

export LANG=ja_JP.UTF-8

export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"

export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/ripgrep/ripgreprc"

path=("$HOME/.bin" "$HOME/.local/bin" "$path[@]")

export PATH

if command -v conda &> /dev/null && [[ -z "$CONDA_PREFIX" ]]; then
  export CONDA_PREFIX=$(conda info --base)
fi
