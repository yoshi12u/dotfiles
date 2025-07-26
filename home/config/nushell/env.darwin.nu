# Mac-specific Nushell environment settings

# Extend PATH with Mac-specific paths
$env.PATH = ($env.PATH | 
    append "/opt/homebrew/bin" |
    append "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" |
    append "/Applications/Cursor.app/Contents/Resources/app/bin" |
    append "/Applications/Windsurf.app/Contents/Resources/app/bin" |
    str join (char esep)
) 
