{ inputs, pkgs, ... }:
{
  programs.ags = {
    enable = true;

    # symlink to ~/.config/ags
    # configDir = ./ags-conf;

    # additional packages and executables to add to gjs's runtime
    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.system}.battery
      fzf
    ];
  };
}
