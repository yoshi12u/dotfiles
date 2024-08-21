{ config, pkgs, ... }:
{
  home.packages = [
    pkgs.docker
    pkgs.docker-compose
    pkgs.docker-buildx
    pkgs.gh
    pkgs.lazydocker
  ];
  imports = [
    ./base.nix
  ];
}
