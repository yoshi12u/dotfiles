{ config, pkgs, ... }:
{
  home.packages = [
    pkgs.docker
    pkgs.docker-compose
    pkgs.docker-buildx
    pkgs.lazydocker
  ];
  imports = [
    ./base.nix
  ];
}
