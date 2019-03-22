function toggl-start-todoist () {
    if [ "$1" = "" ]; then
      local selected_item_id=`todoist --project-namespace --namespace list | fzf | cut -d ' ' -f 1`
    else
      local selected_item_id=`todoist --project-namespace --namespace list --filter "#$1"| fzf | cut -d ' ' -f 1`
    fi
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
    local current_item_content=`toggl --cache --csv current | grep Description | cut -d ',' -f 2`
    local current_item_id=`todoist list | grep $current_item_content | cut -d ' ' -f 1`
    if [ ! -n "$current_item_id" ]; then
      return 0
    else
      todoist close $current_item_id
      toggl stop
    fi
}
