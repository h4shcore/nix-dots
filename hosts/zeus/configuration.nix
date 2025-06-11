{
  config,
  pkgs,
  inputs,
  nix-colors,
  ...
}:
let
  # colorScheme = inputs.nix-colors.colorSchemes.gruvbox-material-dark-hard;
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-hard;
in
{
  imports =
    [
      ./hardware.nix
      ./boot.nix
      ./user.nix
      ./sound.nix
      ./display.nix
      ./network.nix
      ./packages.nix
      ./virtual.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  # nixos flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager = {
    extraSpecialArgs = {inherit inputs colorScheme; };
    users = {
      "daksh" = import ../../home/daksh/home.nix;
    };
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11"; # Did you read the comment?
}
