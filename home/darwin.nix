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
  };
  home.file.".hammerspoon" = {
    recursive = true;
    source = ./config/hammerspoon;
  };
  programs.wezterm = {
    enable = true;
    extraConfig = builtins.readFile ./config/wezterm/wezterm.lua;
  };
  programs.zellij = {
    enable = true;
  };
}
