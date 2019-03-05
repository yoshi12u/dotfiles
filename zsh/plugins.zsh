[[ ! -e ~/.zplugin ]] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light 'zsh-users/zsh-syntax-highlighting'
zplugin light 'zsh-users/zsh-autosuggestions'
zplugin light 'zsh-users/zsh-completions'
zplugin light 'mollifier/anyframe'
zplugin light 'uesaiso/zshmarks'
zplugin ice pick"init.sh"
