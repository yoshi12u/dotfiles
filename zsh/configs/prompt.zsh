# Updates editor information when the keymap changes.
function zle-line-init zle-keymap-select() {
  zle reset-prompt
  zle -R
}

# Ensure that the prompt is redrawn when the terminal size changes.
TRAPWINCH() {
  zle && { zle -R; zle reset-prompt }
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N edit-command-line

VIM_NORMAL="%{$fg_bold[cyan]%}[NORMAL] %{$reset_color%}"
VIM_INSERT="%{$fg_bold[green]%}INSERT>> %{$reset_color%}"

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/$VIM_INSERT}"
}

# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[green]%}$current_branch%{$reset_color%}"
  fi
}

setopt promptsubst

# Allow exported PS1 variable to override default prompt.
if ! env | grep -q '^PS1='; then
  PS1='${fg_bold[green]}>  ${SSH_CONNECTION+"${fg_bold[green]}%n@%m:"}${fg_bold[blue]}%c${fg_bold[green]}$(git_prompt_info)${reset_color}
${fg_bold[green]}$(vi_mode_prompt_info)${reset_color}'
fi
