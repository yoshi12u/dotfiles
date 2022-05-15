preprompt_custom() {
  echo ''
}

prompt_newline='%666v'
PROMPT=" $(preprompt_custom)
$PROMPT"
