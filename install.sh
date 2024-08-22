#!/bin/bash
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
nix run home-manager/release-24.05 -- switch --flake .#x86_64-devcontainer
