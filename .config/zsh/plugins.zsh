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

# outside of zsh
fpath=($ZDOTDIR/anyframe_custom(N-/) $fpath)
zstyle ":anyframe:selector:" use fzf
zi ice wait lucid
zi light mollifier/anyframe

zstyle ':prezto:module:tmux:auto-start' local 'yes'
zi wait lucid for \
 PZTM::environment \
 PZTM::terminal \
 PZTM::history \
 PZTM::directory \
 PZTM::tmux

# Completions
zi lucid wait as'completion' blockf for \
  has'ghq' https://github.com/x-motemen/ghq/blob/master/misc/zsh/_ghq \
  has'rg' https://github.com/BurntSushi/ripgrep/blob/master/complete/_rg \
  has'yadm' https://github.com/TheLocehiliosan/yadm/blob/master/completion/zsh/_yadm \
  has'fd' https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/fd/_fd \
  has'zoxide' https://github.com/ajeetdsouza/zoxide/blob/main/contrib/completions/_zoxide \
  has'tig' mv'tig-completion.zsh -> _tig' https://github.com/jonas/tig/blob/master/contrib/tig-completion.zsh \
  has'delta' mv'completion.zsh -> _delta' https://github.com/dandavison/delta/blob/master/etc/completion/completion.zsh \
  has'lf' mv'lf.zsh -> _lf' https://github.com/gokcehan/lf/blob/master/etc/lf.zsh  \
  has'docker' https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zi lucid wait as'completion' light-mode blockf for \
  pick'src/go' src'src/zsh' zchee/zsh-completions \
  zsh-users/zsh-completions

zstyle ':fzf-tab:complete:*' fzf-bindings 'space:toggle' 'ctrl-a:toggle-all'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'preview $realpath'
zstyle ':fzf-tab:*' switch-group ',' '.'
zstyle ':fzf-tab:*' fzf-flags '--header=Completions'
zi lucid wait for\
    has'fzf' Aloxaf/fzf-tab \
    https://github.com/zimfw/completion/blob/master/init.zsh
zstyle ':completion:*:*' format '-- %d --'


# zsh settings
zvm_config() { ZVM_INIT_MODE=sourcing }
zi wait lucid for \
    https://github.com/zimfw/input/blob/master/init.zsh \
    https://github.com/zimfw/fzf/blob/master/init.zsh 

zi wait lucid light-mode for \
        z-shell/zsh-navigation-tools \
        zsh-users/zsh-history-substring-search \
    atinit"ZI[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" \
        z-shell/F-Sy-H \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions \
    pick'autopair.zsh' \
        hlissner/zsh-autopair \
    depth=1 \
        jeffreytse/zsh-vi-mode

