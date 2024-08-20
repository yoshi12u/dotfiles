{
  description = "Home Manager configuration for macOS(Apple Sillicon)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      ...
    }:
    {
      homeConfigurations = {
        "aarch64-darwin" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.aarch64-darwin;
          modules = [
            ./home/darwin.nix
            (
              { config, pkgs, ... }:
              {
                home = {
                  username = "yoshimasauehara";
                  homeDirectory = "/Users/yoshimasauehara";
                  stateVersion = "24.05";
                };
              }
            )
          ];
        };
        "x86_64-devcontainer" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [
            ./home/devcontainer.nix
            (
              { config, pkgs, ... }:
              {
                home = {
                  username = "vscode";
                  homeDirectory = "/home/vscode";
                  stateVersion = "24.05";
                };
              }
            )
          ];
        };
        "x86_64-linux" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          modules = [
            ./home/linux.nix
            (
              { config, pkgs, ... }:
              {
                home = {
                  username = "yoshimasauehara";
                  homeDirectory = "/home/yoshimasauehara";
                  stateVersion = "24.05";
                };
              }
            )
          ];
        };
      };
    };
}
