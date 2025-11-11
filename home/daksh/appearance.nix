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
    theme = {
      name = "${colorScheme.slug}";
      package =
        let
          nix-colors-lib = inputs.nix-colors.lib.contrib { inherit pkgs; };
        in
        nix-colors-lib.gtkThemeFromScheme { scheme = colorScheme; };
    };
    iconTheme = {
      name = "Gruvbox-Plus-Dark";
      package = pkgs.gruvbox-plus-icons;
    };
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
