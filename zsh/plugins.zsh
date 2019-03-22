[[ ! -e ~/.zplugin ]] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light 'zsh-users/zsh-syntax-highlighting'
zplugin light 'zsh-users/zsh-autosuggestions'
zplugin light 'zsh-users/zsh-completions'
zplugin ice ver'use-builtin-commands'
zplugin light 'uesaiso/anyframe'
zplugin light "b4b4r07/enhancd"
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light 'sindresorhus/pure'
