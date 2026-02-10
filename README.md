# Dotfiles

Personal dotfiles managed with Nix and Home Manager for reproducible development environments.

## 🚀 Features

- **Nix-based Configuration**: Reproducible development environments across machines
- **Cross-platform Support**: Platform-specific configurations for macOS and Linux
- **Modern Shell Setup**: Nushell and Zsh configurations with custom environments
- **Development Tools**: Pre-configured tools for efficient development workflow

## 📦 Included Configurations

### Editor & IDE

- **Neovim**: Extensive Lua configuration with:

### Terminal & Shell

- **WezTerm**: Modern terminal emulator with custom configuration
- **Nushell**: Modern shell with platform-specific configs
- **Zsh**: Traditional shell with custom .zshrc
- **Zellij**: Terminal workspace and multiplexer with custom layouts

### Development Tools

- **Git**: Custom config with commit templates and global gitignore
- **Claude AI**: Settings for AI assistant integration

### System

- **Karabiner**: macOS keyboard customization for enhanced productivity

## 🛠️ Installation

### Prerequisites

- [Nix](https://nixos.org/download.html) package manager
- [Home Manager](https://github.com/nix-community/home-manager)

### Setup

1. Clone this repository:

```bash
git clone https://github.com/yoshi12u/dotfiles.git ~/ghq/github.com/yoshi12u/dotfiles
cd ~/ghq/github.com/yoshi12u/dotfiles
```

2. Build and switch to the configuration:

```bash
home-manager switch --flake .#$(hostname)
```

## 📁 Project Structure

```
.
├── flake.nix           # Nix flake configuration
├── flake.lock          # Locked dependencies
├── home/
│   ├── base.nix        # Base home-manager configuration
│   ├── darwin.nix      # macOS-specific configuration
│   └── config/         # Application configurations
│       ├── nvim/       # Neovim Lua configuration
│       ├── wezterm/    # WezTerm configuration
│       ├── nushell/    # Nushell shell config
│       ├── zellij/     # Zellij terminal multiplexer
│       ├── git/        # Git configuration
│       └── ...         # Other app configs
└── .github/            # GitHub workflows and actions
```

## 📝 License

This repository contains personal configuration files. Feel free to use and modify them for your own setup.

---

_Built with ❤️ using Nix and Home Manager_


## Codex Development Setup

This repository includes a devcontainer definition for the Codex environment. To get started:

```bash
# Launch the devcontainer or run the setup script manually
./setup_codex.sh
```

The script installs Nix if needed and applies the `x86_64-devcontainer` Home Manager configuration.
