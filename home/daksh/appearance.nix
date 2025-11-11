{
  pkgs,
  inputs,
  ...
}:
{
  dconf.settings = {
    # "org/gnome/shell" = {
    #   favorite-apps = [
    #     "swayimg.desktop"
    #     "firefox.desktop"
    #     "wezterm.desktop"
    #   ];
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "Gruvbox-Plus-Dark";
      package = pkgs.gruvbox-plus-icons;
    };
    # cursorTheme = {
    #   name = "McMojave-cursors";
    #   size = 28;
    # };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 18;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
