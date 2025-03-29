# FZF default options
$env.FZF_DEFAULT_OPTS = "--ansi --height 60% --layout=reverse --border --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

# Extend PATH with common paths
$env.PATH = ($env.PATH | 
    append "/nix/var/nix/profiles/default/bin" | 
    str join (char esep)
)

# Platform-specific configurations will be sourced by the Nix configuration
