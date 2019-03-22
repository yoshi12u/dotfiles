function toggl-start-todoist () {
    local selected_item_id=`todoist --project-namespace --namespace list | fzf | cut -d ' ' -f 1`
    if [ ! -n "$selected_item_id" ]; then
        return 0
    fi
    local selected_item_content=`todoist --csv show ${selected_item_id} | grep Content | cut -d',' -f2- | sed s/\"//g`
    if [ -n "$selected_item_content" ]; then
        BUFFER="toggl start \"${selected_item_content}\""
        CURSOR=$#BUFFER
        zle accept-line
    fi
}
zle -N toggl-start-todoist
bindkey '^xts' toggl-start-todoist

function toggl-stop-todoist () {
    current_item_id=`toggl --cache --csv current | grep ID | cut -d ',' -f 2`
    if [ ! -n "$current_item_id" ]; then
      return 0
    else
      todoist close $current_item_id
      toggl stop
    fi
}
