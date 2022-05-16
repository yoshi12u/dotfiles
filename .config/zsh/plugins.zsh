### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit snippet PZT::modules/environment/init.zsh
zinit snippet PZT::modules/terminal/init.zsh
zinit snippet PZT::modules/editor/init.zsh
zinit snippet PZT::modules/history/init.zsh
zinit snippet PZT::modules/directory/init.zsh
zinit snippet PZT::modules/spectrum/init.zsh
zinit snippet PZT::modules/utility/init.zsh
zinit snippet PZT::modules/completion/init.zsh
zinit snippet PZT::modules/tmux/init.zsh
zinit light 'zsh-users/zsh-syntax-highlighting'
zinit light 'zsh-users/zsh-history-substring-search'
zinit light 'zsh-users/zsh-autosuggestions'
zinit light "b4b4r07/enhancd"
zinit light 'mollifier/anyframe'
