{ ... }:
let
  colors = import ../../conf/colors/paradise.nix;
in
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
      colors = with colors; {
        inherit foreground background;
          regular0 = base00;
          regular1 = base01;
          regular2 = base02;
          regular3 = base03;
          regular4 = base04;
          regular5 = base05;
          regular6 = base06;
          regular7 = base07;
          bright0 = base08;
          bright1 = base09;
          bright2 = base0A;
          bright3 = base0B;
          bright4 = base0C;
          bright5 = base0D;
          bright6 = base0E;
          bright7 = base0F;
      };
    };
  };
}
