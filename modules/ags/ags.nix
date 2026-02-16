{ pkgs, ... }:
{
  programs.ags = {
    enable = true;

    # symlink to ~/.config/ags
    # configDir = ./ags;

    # additional packages and executables to add to gjs's runtime
    extraPackages = with pkgs; [
      inputs.astal.packages.${pkgs.system}.battery
      fzf
    ];
  };
}
