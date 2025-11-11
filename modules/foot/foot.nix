{ colorScheme, ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Iosevka Nerd Font:style=Regular:pixelsize=18";
        font-bold = "Iosevka Nerd Font:style=Bold:pixelsize=18";
        pad = "20x20 center";
      };
      scrollback.lines = 10000;
      colors = {
        background = "${colorScheme.palette.base00}";
        foreground = "${colorScheme.palette.base05}";
        regular0 = "${colorScheme.palette.base00}";
        regular1 = "${colorScheme.palette.base08}";
        regular2 = "${colorScheme.palette.base0B}";
        regular3 = "${colorScheme.palette.base0A}";
        regular4 = "${colorScheme.palette.base0D}";
        regular5 = "${colorScheme.palette.base0E}";
        regular6 = "${colorScheme.palette.base0C}";
        regular7 = "${colorScheme.palette.base05}";
        bright0 = "${colorScheme.palette.base03}";
        bright1 = "${colorScheme.palette.base08}";
        bright2 = "${colorScheme.palette.base0B}";
        bright3 = "${colorScheme.palette.base0A}";
        bright4 = "${colorScheme.palette.base0D}";
        bright5 = "${colorScheme.palette.base0E}";
        bright6 = "${colorScheme.palette.base0C}";
        bright7 = "${colorScheme.palette.base07}";
      };
    };
  };
}
