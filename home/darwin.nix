{ pkgs, ... }:
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
  ];
  xdg.configFile = {
    karabiner = {
      source = ./config/karabiner;
      recursive = true;
    };
  };
  home.file.".hammerspoon" = {
    recursive = true;
    source = ./config/hammerspoon;
  };
}
