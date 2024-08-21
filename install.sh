#!/bin/bash
nix run home-manager/release-24.05 -- switch --flake .#x86_64-devcontainer
