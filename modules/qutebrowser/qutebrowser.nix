{ ... }:
{
  programs = {
    qutebrowser = {
      enable = true;
      settings = {
        colors = {
          hints = {
            bg = "#282828";
            fg = "#ebdbb2";
          };
          tabs.bar.bg = "#282828";
        };
        tabs.tabs_are_windows = true;
      };
    };
  };
}
