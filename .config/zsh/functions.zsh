function cd {
    if [ $# -eq 0 ]; then
        anyframe-widget-cd
    else
        builtin cd "$@" &>/dev/null || __zoxide_zi "$@"
    fi
    lsd
}

