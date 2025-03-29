{ config, pkgs, ... }:
{
  imports = [
    ./base.nix
  ];
  home.packages = [
    pkgs.nixfmt-rfc-style
    pkgs.docker
    pkgs.docker-compose
    pkgs.docker-buildx
    pkgs.lazydocker
    pkgs.lima
    pkgs.colima
    pkgs.kubectl
    pkgs.kdash
    pkgs.kustomize
    pkgs.plandex
    pkgs.nodejs
    pkgs.pnpm
    pkgs.awscli2
  ];
  xdg.configFile = {
    karabiner = {
      source = ./config/karabiner;
      recursive = true;
    };
    zellij = {
      source = ./config/zellij;
      recursive = true;
    };
    "nushell/env.darwin.nu" = {
      source = ./config/nushell/env.darwin.nu;
    };
    "nushell/config.darwin.nu" = {
      source = ./config/nushell/config.darwin.nu;
    };
  };
  home.file.".hammerspoon" = {
    recursive = true;
    source = ./config/hammerspoon;
  };
  home.file.".claude" = {
    recursive = true;
    source = ./config/claude;
  };
  programs.wezterm = {
    enable = true;
    extraConfig = builtins.readFile ./config/wezterm/wezterm.lua;
  };
  programs.zellij = {
    enable = true;
  };
  programs.nushell = {
    extraEnv = ''
      source ${config.xdg.configHome}/nushell/env.darwin.nu
    '';
    extraConfig = ''
      source ${config.xdg.configHome}/nushell/config.darwin.nu
    '';
  };
}
