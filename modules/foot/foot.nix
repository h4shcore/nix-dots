{ colors, ... }:
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
      colors = with colors.default; {
        inherit foreground background;
          regular0 = regular0;
          regular1 = regular1;
          regular2 = regular2;
          regular3 = regular3;
          regular4 = regular4;
          regular5 = regular5;
          regular6 = regular6;
          regular7 = regular7;
          bright0 = bright0;
          bright1 = bright1;
          bright2 = bright2;
          bright3 = bright3;
          bright4 = bright4;
          bright5 = bright5;
          bright6 = bright6;
          bright7 = bright7;
      };
    };
  };
}
