
{ inputs, pkgs, ... }:

{
  programs.ags = {
    enable = true;
    configDir = null;  # Set to a path if you want to manage the config
    extraPackages = with pkgs; [
      gtksourceview
      # webkitgtk
      accountsservice
    ];
  };
}
