{ config, pkgs, ... }:
{
  imports = [
    ./base.nix
  ];
  home.packages = [
    pkgs.nerdfonts
    pkgs.docker
    pkgs.docker-compose
    pkgs.docker-buildx
    pkgs.lazydocker
    pkgs.gh
    pkgs.lima
    pkgs.colima
    # awscli2 is installed via homebrew
    pkgs.google-cloud-sdk
  ];
  programs.zsh = {
    antidote = {
      plugins = [
        "zellij-org/zellij path:zellij-utils/assets/shell"
      ];
    };
  };
}
