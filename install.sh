/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
mkdir ~/dotfiles
git clone https://github.com/uesaiso/dotfiles ~/dotfiles
brew bundle
env RCRC=$HOME/dotfiles/rcrc rcup
ghq get uesaiso/dotfiles
ln -s ~/.ghq/github.com/uesaiso/dotfiles ~/dotfiles
pip3 install neovim
chsh -s /bin/zsh
