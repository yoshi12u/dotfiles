/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install ghq
brew install rcm
ghq get uesaiso/dotfiles
env RCRC=$HOME/ghq/github.com/uesaiso/dotfiles/rcrc rcup
brew bundle