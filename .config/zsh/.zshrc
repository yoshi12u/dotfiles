source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/startup.zsh
function zvm_after_init() {
    source $ZDOTDIR/keybindings.zsh
}

fpath+=~/.zfunc
autoload -Uz compinit && compinit

# Local config
[[ -f $ZDOTDIR/.zshrc.local ]] && source $ZDOTDIR/.zshrc.local

