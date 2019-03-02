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
${fg_bold[green]}>> ${reset_color}'
fi
