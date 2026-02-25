{ ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Iosevka Nerd Font:style=Regular:pixelsize=18";
        font-bold = "Iosevka Nerd Font:style=Bold:pixelsize=18";
        pad = "10x10 center";
      };
      scrollback.lines = 10000;
    };
  };
}
