{ pkgs, ... }:
{
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    colors.draw_bold_text_with_bright_colors = true;

    font.size = 14;
    font.bold = {
      family = "Iosevka Nerd Font";
      style = "Bold";
    };

    font.bold_italic = {
      family = "Iosevka Nerd Font";
      style = "Bold Italic";
    };

    font.italic = {
      family = "Iosevka Nerd Font";
      style = "Italic";
    };

    font.normal = {
      family = "Iosevka Nerd Font";
      style = "Regular";
    };

    keyboard.bindings = [
      {
        action = "ToggleFullscreen";
        key = "F11";
      }
    ];

    scrolling = {
      history = 10000;
      multiplier = 3;
    };

    selection = {
      save_to_clipboard = false;
    };

    window = {
      startup_mode = "Maximized";
      decorations = "None";
    };

    window.class = {
      general = "Alacritty";
      instance = "Alacritty";
    };

    window.padding = {
      x = 6;
      y = 1;
    };

    colors = {
      primary = {
        background = "#151515";
        foreground = "#E8E3E3";
      };
      normal = {
          black =   "#151515";
          red =     "#B66467";
          green =   "#8C977D";
          yellow =  "#D9BC8C";
          blue =    "#8DA3B9";
          magenta = "#A988B0";
          cyan =    "#8AA6A2";
          white =   "#E8E3E3";
      };
      bright = {
          black =   "#424242";
          red =     "#B66467";
          green =   "#8C977D";
          yellow =  "#D9BC8C";
          blue =    "#8DA3B9";
          magenta = "#A988B0";
          cyan =    "#8AA6A2";
          white =   "#E8E3E3";
      };
    };
  };
}
