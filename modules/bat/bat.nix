{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    config = {
      theme = "gruvbox";
    };
    extraPackages = with pkgs.bat-extras; [
      batdiff
    ];
  };
}
