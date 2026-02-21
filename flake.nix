{
  description = "dotfiles";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-colors.url = "github:misterio77/nix-colors";
    oxwm = {
      url = "github:tonybanters/oxwm";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nix-colors,
      ...
    }@inputs:
    {
      nixosConfigurations.zeus = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs nix-colors;
        };
        modules = [
          ./hosts/zeus/configuration.nix
          inputs.home-manager.nixosModules.home-manager
          inputs.oxwm.nixosModules.default
        ];
      };
    };
}
