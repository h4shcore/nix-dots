{
  pkgs,
  inputs,
  ...
}:
{
  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    fastfetch
    # speedtest-rs
    # yt-dlp
    # ffmpeg
    dust
    htop-vim
    brave
    yazi
    nix-search-cli
    # spotify
    # psst # spotify in rust (early development)
    # equibop
    # discord
    vesktop
    qbittorrent
    # stremio
    swayimg
    swww
    brightnessctl
    playerctl
    pavucontrol
    udiskie
    jq
    # socat

    woomer # zoom tool for wayland

    github-cli

    # man pages
    # linux-manual
    # man-pages
    # man-pages-posix

    # ebook reader
    # foliate

    wl-clipboard
    hyprpolkitagent
    wireplumber
    hyprshot
    wlsunset
    quickshell

    # app launcher
    # wmenu
    # rofi
    fuzzel

    # doc viewer
    zathura

    # image viewer
    swayimg

    # libreoffice
    # libreoffice-qt6-fresh
    # hunspell # spellcheck

    # file management
    # nemo
    xfce.thunar
    trash-cli

    # screen mirror
    wl-mirror

    # amazing calculator
    qalculate-gtk

    # output display configuration app
    # nwg-displays
    nwg-look # gnome settings

    # kde qt stuff
    # kdePackages.qt6ct
    # libsForQt5.qt5ct
    # libsForQt5.qtstyleplugin-kvantum
    # kdePackages.xwaylandvideobridge

    # xwayland-satellite

    # gtk
    # everforest-gtk-theme
    gruvbox-gtk-theme

    # go
    # go

    # java
    # zulu

    # c/c++
    gcc
    gnumake

    # rust
    # rustup

    vscode
    # zed-editor

    # node
    nodejs
    pnpm

    # global compilers, linters, package managers for different languages.
    (pkgs.python313.withPackages (
      python-pkgs: with python-pkgs; [
        pylint
        subliminal
      ]
    ))

    # gaming
    winetricks
    wineWowPackages.waylandFull
    steam
    mesa-demos
    mesa
    # osu-lazer-bin

    # fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    font-awesome
    nerd-fonts.iosevka
    nerd-fonts.lilex
  ];
}
