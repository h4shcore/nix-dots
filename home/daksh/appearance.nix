{
  pkgs,
  inputs,
  colorScheme,
  ...
}:
{
  dconf.settings = {
    "org/gnome/shell" = {
      favorite-apps = [
        "swayimg.desktop"
        "firefox.desktop"
        "wezterm.desktop"
      ];
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
    };
  };

  gtk = {
    enable = true;
    # theme = {
    #   name = "${colorScheme.slug}";
    #   package =
    #     let
    #       nix-colors-lib = inputs.nix-colors.lib.contrib { inherit pkgs; };
    #     in
    #     nix-colors-lib.gtkThemeFromScheme { scheme = colorScheme; };
    # };
    theme = {
      name = "Everforest-Dark-BL";
      package = pkgs.everforest-gtk-theme;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 25;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
