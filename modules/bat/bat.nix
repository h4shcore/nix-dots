{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    config = {
      theme = "everforest-dark-hard";
    };
    extraPackages = with pkgs.bat-extras; [
      batdiff
    ];
  };
}
