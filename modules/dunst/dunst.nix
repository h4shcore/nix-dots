{ ... }:
{
  services.dunst.enable = true;

  services.dunst.settings = {
    global = {
      mouse_left_click = "do_action";
      mouse_right_click = "context";
      mouse_middle_click = "close_current";
      frame_color = "#ebdbb2";
      separator_color = "auto";
      # font = "Iosevka Nerd Font 12";
      font = "GohuFont 14 Nerd Font 12";
      shrink = true;
      word_wrap = "yes";
      offset = "(9, 9)";
      padding = 15;
      horizontal_padding = 15;
      corner_radius = 0;
      format = "<b>%s</b>\\n%b";
      sticky_history = "no";
      monitor = 0;
      show_indicators = "no";
    };

    base16_low = {
      msg_urgency = "low";
      background = "#282828";
      foreground = "#ebdbb2";
      timeout = 3;
    };

    base16_normal = {
      msg_urgency = "normal";
      background = "#282828";
      foreground = "#ebdbb2";
      timeout = 3;
    };

    base16_critical = {
      msg_urgency = "critical";
      background = "#282828";
      foreground = "#ebdbb2";
      frame_color = "#cc241d";
      timeout = 5;
    };
  };
}
