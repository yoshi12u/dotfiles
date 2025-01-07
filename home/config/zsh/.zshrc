alias e="$EDITOR"
alias vim="nvim"
alias cat="bat"
alias ls="lsd"
alias grep="rg"
alias ps="procs"
alias find="fd"
alias watch="viddy"
alias kube="kubectl"

bindkey -v
function _fzf_cd_ghq() {
    local root="$(ghq root)"
    local repo="$(ghq list | fzf --preview="ls -AF --color=always ${root}/{1}")"
    local dir="${root}/${repo}"
    [ -n "${repo}" ] && cd "${dir}"
    zle accept-line
    zle reset-prompt
}
zle -N _fzf_cd_ghq
bindkey "^g" _fzf_cd_ghq
bindkey '^F' forward-char
bindkey '^B' backward-char
bindkey -r '^D'
bindkey '^D' exit

