{ config, pkgs, ... }:
{
  home.packages = [
    pkgs.lazydocker
  ];
  imports = [
    ./base.nix
  ];
}
