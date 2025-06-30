# Dotfiles

Personal dotfiles managed with Nix and Home Manager.

## Features

- Nix-based configuration for reproducible development environments
- Platform-specific configurations for macOS and Linux
- Shell configurations for Nushell and Zsh
- Development tools including:
  - Neovim
  - WezTerm
  - Zellij
  - Git


## Codex Development Setup

This repository includes a devcontainer definition for the Codex environment. To get started:

```bash
# Launch the devcontainer or run the setup script manually
./setup_codex.sh
```

The script installs Nix if needed and applies the `x86_64-devcontainer` Home Manager configuration.
