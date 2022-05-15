# path
export PATH="/usr/local/bin:$PATH"
path=(
    ~/bin
    $path
)

# 日本語設定
export LANG=ja_JP.UTF-8

# editor
export VISUAL=nvim
export EDITOR=$VISUAL
export PAGER='less'
export LESS="-MR"
export LESSOPEN="| src-hilite-lesspipe.sh %s"

export XDG_CONFIG_HOME=~/.config