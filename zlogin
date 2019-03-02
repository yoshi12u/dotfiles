local iterm2_shell_integration="${HOME}/.iterm2_shell_integration.zsh"
if [[ ! -e $iterm2_shell_integration ]]; then
  curl -L https://iterm2.com/shell_integration/zsh -o $iterm2_shell_integration
fi
source $iterm2_shell_integration

