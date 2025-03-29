#!/usr/bin/env bash

set -euo pipefail

# Get target from command line argument, default to darwin
TARGET="${1}"

# Generate MCP config
./script/generate-mcp-config.sh

# Run home-manager switch with the specified flake target
home-manager switch --flake ".#$TARGET" --impure

echo "Build completed for target: $TARGET"
