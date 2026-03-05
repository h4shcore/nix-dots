{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    # config = {
    #   theme = "";
    # };
    extraPackages = with pkgs.bat-extras; [
      batdiff
    ];
  };
}
