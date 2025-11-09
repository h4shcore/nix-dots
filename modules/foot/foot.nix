{ ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Iosevka Nerd Font:style=Regular:pixelsize=22";
        font-bold = "Iosevka Nerd Font:style=Bold:pixelsize=22";
      };
      scrollback.lines = 10000;
    };
  };
}
