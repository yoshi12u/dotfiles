# Mac-specific Nushell environment settings
use std "path add"
path add '/opt/homebrew/bin'
path add $"($env.HOME)/.local/bin"
