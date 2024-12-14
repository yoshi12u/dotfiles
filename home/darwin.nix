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
    pkgs.gh
    pkgs.lima
    pkgs.colima
    # awscli2 is installed via homebrew
    pkgs.google-cloud-sdk
  ];
  home.file.".hammerspoon" = {
    recursive = true;
    source = ./config/hammerspoon;

  };
}
