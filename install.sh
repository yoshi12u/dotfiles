#!/bin/bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install linux --no-confirm --init none
nix run home-manager/release-24.05 -- switch --flake .#x86_64-devcontainer
