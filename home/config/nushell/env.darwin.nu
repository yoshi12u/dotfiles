# Mac-specific Nushell environment settings

# Set PNPM_HOME
$env.PNPM_HOME = $env.HOME + "/.pnpm"

# Extend PATH with Mac-specific paths
$env.PATH = ($env.PATH | 
    append $env.PNPM_HOME |
    append "/opt/homebrew/bin" |
    append "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin" |
    append "/Applications/Cursor.app/Contents/Resources/app/bin" |
    append "/Applications/Windsurf.app/Contents/Resources/app/bin" |
    str join (char esep)
) 