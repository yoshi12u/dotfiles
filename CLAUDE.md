# CLAUDE.md

Guidance for Claude Code when working in this repository.

## What this repo is

Personal dotfiles for macOS (Apple Silicon), built as a Nix flake consumed by Home Manager. There is no application code, build pipeline, or test suite. The single flake output is `homeConfigurations."aarch64-darwin"`; it is applied with:

```bash
home-manager switch --flake .#aarch64-darwin
```

This only builds on aarch64-darwin, so in Linux CI/sandbox environments limit verification to syntax-level checks (`nix flake check --no-build` or `nix-instantiate --parse` when Nix is available, `luac -p` / `jq` / manual review otherwise).

## Architecture

- `flake.nix` — flake entry point; hardcodes `home.username` / `home.homeDirectory`.
- `home/base.nix` — platform-neutral packages, `programs.*` modules, and `xdg.configFile` links.
- `home/darwin.nix` — imports `base.nix`; adds macOS-only packages, Karabiner/Zellij/Claude files, and mise global tools.
- `home/config/<tool>/` — plain config files deployed by Home Manager. Edits take effect only after re-running the switch command, because deployed copies are store symlinks.

Wiring to know about:

- Zsh: `programs.zsh.initContent` sources `home/config/zsh/.zshrc` (deployed to `~/.config/zsh/.zshrc`). Home Manager integrations (eza, zoxide, starship, …) already define aliases; don't re-alias tools in `.zshrc` unless overriding deliberately.
- Nushell: `config.nu`/`env.nu` are platform-neutral; `darwin.nix` appends `config.darwin.nu`/`env.darwin.nu` via `extraConfig`/`extraEnv`.
- Git: `programs.git` includes `home/config/git/config` via `include.path` rather than inlining settings in Nix.
- Neovim: LazyVim distribution. `lua/plugins/*.lua` are lazy.nvim specs; `lua/ai/git_codex.lua` is a custom blink.cmp source registered in `lua/plugins/blink.lua` (active in `gitcommit` buffers, shells out to the `codex` CLI).

## Conventions

- Commits: Conventional Commits (`feat:`, `fix:`, `refactor:`, `chore:`, …), English, imperative mood.
- Nix: format with `nixfmt-rfc-style`.
- Lua: format with StyLua using `home/config/nvim/stylua.toml` (tabs, indent width 2, column width 120).
- Comments and docs are written in English.

## Gotchas

- Only `aarch64-darwin` exists as an output; `home/linux.nix` and `home/devcontainer.nix` were removed intentionally. If a module is deleted, remove its `homeConfigurations` entry from `flake.nix` too.
- Zellij runs in locked mode by default; its keybindings in `config.kdl` deliberately avoid editor collisions. Every key must be bound at most once per mode — later duplicates silently win.
- Karabiner, Zed, and Claude configs are kept as plain comment-free JSON; validate with `jq` after editing.
