function lc () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

function cd {
    if [ $# -eq 0 ]; then
        anyframe-widget-cd
    else
        builtin cd "$@" &>/dev/null || __zoxide_zi "$@"
    fi
}

alias z=__zoxide_zi
