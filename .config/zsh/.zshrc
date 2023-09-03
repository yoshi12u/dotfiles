source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/startup.zsh
function zvm_after_init() {
    source $ZDOTDIR/keybindings.zsh
}

# Local config
[[ -f $ZDOTDIR/.zshrc.local ]] && source $ZDOTDIR/.zshrc.local

builtin source "$HOME/.rye/env"
