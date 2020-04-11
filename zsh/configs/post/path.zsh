export GOPATH=$HOME/.go
export FLUTTERPATH=$HOME/flutter

# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# load ASDF, falling back to rbenv if not available
if [ -d "$HOME/.asdf" ]; then
  . $HOME/.asdf/asdf.sh
fi

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

PATH=$PATH:$GOPATH/bin
PATH=$PATH:$HOME/flutter/bin
PATH=$PATH:$HOME/.pub-cache/bin

export -U PATH
