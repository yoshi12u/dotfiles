if [[ ! -f $HOME/.config/zsh/.zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.config/zsh/.zi" && command chmod g-rwX "$HOME/.config/zsh/.zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.config/zsh/.zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.config/zsh/.zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
# examples here -> https://z.digitalclouds.dev/ecosystem/annexes
zicompinit # <- https://z.digitalclouds.dev/docs/guides/commands

zstyle ':prezto:module:tmux:auto-start' local 'yes'
zi wait lucid for \
 PZTM::environment \
 PZTM::terminal \
 PZTM::history \
 PZTM::directory \
 PZTM::tmux

# Completions
zi ice lucid wait as'completion' blockf for \
    zsh-users/zsh-completions \
    pick'src/go' src'src/zsh' zchee/zsh-completions \
    has'ghq' https://github.com/x-motemen/ghq/blob/master/misc/zsh/_ghq \
    has'rg' https://github.com/BurntSushi/ripgrep/blob/master/complete/_rg \
    has 'yadm' https://github.com/TheLocehiliosan/yadm/blob/master/completion/zsh/_yadm \
    has 'fd' https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/fd/_fd \
    has 'zoxide' https://github.com/ajeetdsouza/zoxide/blob/main/contrib/completions/_zoxide \
    has 'tig' https://github.com/jonas/tig/blob/master/contrib/tig-completion.zsh \
    has 'delta' mv'completion.zsh -> _delta' https://github.com/dandavison/delta/blob/master/etc/completion/completion.zsh

zi ice lucid wait has'fzf'
zi light Aloxaf/fzf-tab

zi wait lucid light-mode for \
        z-shell/zsh-navigation-tools \
        zsh-users/zsh-history-substring-search \
        z-shell/H-S-MW \
    atinit"ZI[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
        z-shell/F-Sy-H \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions \
    pick'autopair.zsh' \
        hlissner/zsh-autopair

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:#cbccc6,bg:#1f2430,hl:#707a8c
--color=fg+:#707a8c,bg+:#191e2a,hl+:#ffcc66
--color=info:#73d0ff,prompt:#707a8c,pointer:#cbccc6
--color=marker:#73d0ff,spinner:#73d0ff,header:#d4bfff
--reverse
'
zi wait lucid for \
    https://github.com/zimfw/input/blob/master/init.zsh \
    https://github.com/zimfw/completion/blob/master/init.zsh \
    https://github.com/zimfw/fzf/blob/master/init.zsh

# outside of zsh
export ENHANCD_DISABLE_DOT=1
zi light b4b4r07/enhancd

fpath=($ZDOTDIR/anyframe_custom(N-/) $fpath)
zstyle ":anyframe:selector:" use fzf
zi light mollifier/anyframe
