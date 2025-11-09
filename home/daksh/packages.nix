{
  pkgs,
  ...
}:
{
  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    firefox
    brave
    yazi
    nix-search-cli
    spotify
    equibop
    vesktop
    qbittorrent
    stremio
    swayimg

    gcc

    # gaming
    wineWowPackages.waylandFull
    winetricks

    # fonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome
    nerd-fonts.iosevka
    nerd-fonts.jetbrains-mono
  ];
}
