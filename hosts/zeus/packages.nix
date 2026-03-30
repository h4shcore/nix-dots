{
  pkgs,
  ...
}:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    steam-run
    cyme
    unrar
  ];

  # Enable command-not-found package suggestions
  programs.command-not-found.enable = true;
}
