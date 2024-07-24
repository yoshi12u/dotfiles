function cd {
    if [ $# -eq 0 ]; then
        anyframe-widget-cd
    else
        builtin cd "$@" &>/dev/null || __zoxide_zi "$@"
    fi
    lsd
}

function lfcd() {
    LF_SHELLCD_TEMPDIR="$(mktemp -d -t lf-shellcd-XXXXXX)"
    export LF_SHELLCD_TEMPDIR
    lf "$@"
    if [ -e "$LF_SHELLCD_TEMPDIR/changecwd" ] && \
        dir="$(cat "$LF_SHELLCD_TEMPDIR/changecwd")" 2>/dev/null; then
            if [ -d "$dir" ]; then
                cd "$dir"
            fi
    fi
    rm -rf "$LF_SHELLCD_TEMPDIR"
    unset LF_SHELLCD_TEMPDIR
}

alias lf=lfcd
