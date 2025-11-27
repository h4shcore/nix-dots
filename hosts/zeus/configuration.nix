{
  config,
  pkgs,
  inputs,
  ...
}:
let
  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-hard;
in
{
  imports = [
    ./hardware.nix
    ./boot.nix
    ./display.nix
    ./graphics.nix
    ./network.nix
    ./packages.nix
    ./security.nix
    ./sound.nix
    ./user.nix
    ./virtual.nix
    # inputs.home-manager.nixosModules.home-manager
  ];

  # enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # enable home manager
  home-manager = {
    extraSpecialArgs = { inherit inputs colorScheme; };
    users = {
      "daksh" = import ../../home/daksh/home.nix;
    };
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}
