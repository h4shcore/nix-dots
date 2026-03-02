{
  description = "dotfiles";

  inputs = {
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    home-manager = {
      # url-unstable = "github:nix-community/home-manager";
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      # url-unstable = "github:nix-community/nixvim";
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    let
      colors = import ./conf/colors/paradise.nix;
    in
    {
      nixosConfigurations = {
        zeus = nixpkgs.lib.nixosSystem {
          specialArgs = {
            inherit inputs colors;
          };
          modules = [
            ./hosts/zeus/configuration.nix
          ];
        };
      };
    };
}
