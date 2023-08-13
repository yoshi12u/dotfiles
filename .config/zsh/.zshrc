# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source $ZDOTDIR/plugins.zsh
source $ZDOTDIR/functions.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/startup.zsh
function zvm_after_init() {
    source $ZDOTDIR/keybindings.zsh
}

# Local config
[[ -f $ZDOTDIR/.zshrc.local ]] && source $ZDOTDIR/.zshrc.local

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
