{ pkgs, ... }:
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
          background = "151515ff";
          text = "E8E3E3ff";
          match = "D9BC8Cff";
          selection = "424242ff";
          selection-match = "B66467ff";
          selection-text = "BBB6B6ff";
          border = "BBB6B6ff";
        };
        border = {
          width = "2";
          radius = "0";
        };
        dmenu = {
          mode = "text";
        };
      };
    };
  };
}
