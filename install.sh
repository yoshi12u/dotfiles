if [ "$(uname)" == 'Darwin' ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
  test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
  echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
fi
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
