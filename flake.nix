{
  description = "Home Manager configuration for macOS (Apple Silicon)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }:
    {
      homeConfigurations."aarch64-darwin" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.aarch64-darwin;
        modules = [
          ./home/darwin.nix
          {
            home = {
              username = "yoshimasauehara";
              homeDirectory = "/Users/yoshimasauehara";
              stateVersion = "24.11";
            };
          }
        ];
      };
    };
}
