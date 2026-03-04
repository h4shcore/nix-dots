{ colorScheme, pkgs, ... }:
{
  programs = {
    fuzzel = {
      enable = true;
      package = pkgs.fuzzel;
      settings = {
        main = {
          layer = "overlay";
          font = "Iosevka Nerd Font:size=12";
          prompt = "'> '";
          lines = "15";
          width= "50";
          horizontal-pad = "20";
          vertical-pad = "10";
          inner-pad = "10";
          icons-enabled = "false";
        };
        colors = {
          background = "${colorScheme.palette.base00}ff";
          text = "${colorScheme.palette.base05}ff";
          placeholder = "${colorScheme.palette.base03}ff";
          prompt = "${colorScheme.palette.base05}ff";
          input = "${colorScheme.palette.base05}ff";
          match = "${colorScheme.palette.base0A}ff";
          selection = "${colorScheme.palette.base02}ff";
          selection-text = "${colorScheme.palette.base05}ff";
          selection-match = "${colorScheme.palette.base0A}ff";
          counter = "${colorScheme.palette.base06}ff";
          border = "${colorScheme.palette.base04}ff";
        };
        border = {
          width = "2";
          radius = "10";
        };
        dmenu = {
          mode = "text";
        };
      };
    };
  };
}
