#!/usr/bin/env bash
set -euo pipefail

if ! command -v nix >/dev/null 2>&1; then
  curl -L https://nixos.org/nix/install | sh -s -- --no-daemon
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# Enable Nix flakes and use home-manager to apply the devcontainer configuration
export NIX_CONFIG="experimental-features = nix-command flakes"

nix run .#homeConfigurations.x86_64-devcontainer.activationPackage
