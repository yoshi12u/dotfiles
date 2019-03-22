prompt_toggl_current() {
  local tgc=$(toggl --cache --csv current)
  local tgc_time=$(echo $tgc | grep Duration | cut -d ',' -f 2)
  local tgc_dsc=$(echo $tgc | grep Description | cut -d ',' -f 2 | cut -c 1-20)
  local short_tgc_dsc=$(if [ $(echo $tgc_dsc | wc -m) -lt 20 ]; then echo $tgc_dsc; else echo "${tgc_dsc}.."; fi)
  if [ ! -n "$tgc_time" ]; then
      echo "None"
  else
      echo "[$tgc_time $short_tgc_dsc]"
  fi
}

preprompt_custom() {
  echo ''
}

preprompt_newline() {
  echo '%F{white}Task: $(prompt_toggl_current)%f'
}

prompt_newline='%666v'
PROMPT=" $(preprompt_custom)
$(preprompt_newline)
$PROMPT"
