/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
if [ -x ! which git ]; then
  brew install git
fi
git clone https://github.com/uesaiso/dotfiles ~/dotfiles
cd ~/dotfiles
brew bundle
env RCRC=$HOME/dotfiles/rcrc rcup
ghq get uesaiso/dotfiles
ln -s ~/.ghq/github.com/uesaiso/dotfiles ~/dotfiles
pip3 install neovim
chsh -s /bin/zsh
