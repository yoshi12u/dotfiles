#!/usr/bin/env bash

set -euo pipefail

# Ensure dist directory exists
mkdir -p dist

# Generate MCP config file with secrets from environment variables
cat >dist/mcp_config.json <<EOF
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_PERSONAL_ACCESS_TOKEN}"
      }
    }
  }
}
EOF

echo "Generated MCP config in dist/mcp_config.json"

