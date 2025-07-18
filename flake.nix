{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # nixvim = {
    #   url = "github:nix-community/nixvim/nixos-25.05";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    nix-colors.url = "github:misterio77/nix-colors";
    # ags.url = "github:Aylur/ags";
  };

  outputs = { 
    self,
    nixpkgs,
    home-manager,
    nix-colors,
    # ags,
    ...
  }
    @inputs: 
  {
    nixosConfigurations.zeus= nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs nix-colors;
      };
      modules = [
        ./hosts/zeus/configuration.nix
        inputs.home-manager.nixosModules.home-manager
      ];
    };
  };
}
