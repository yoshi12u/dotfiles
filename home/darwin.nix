{ config, pkgs, ... }:
{
  imports = [
    ./base.nix
  ];
  home.packages = [
    pkgs.lima
    pkgs.colima
  ];
  programs.zsh = {
    antidote = {
      plugins = [
        "zellij-org/zellij path:zellij-utils/assets/shell"
      ];
    };
  };
}
