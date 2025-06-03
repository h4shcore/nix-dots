{ 
  pkgs,
  ...
}:
{

  programs.thunar.enable = true;
  environment.systemPackages = with pkgs; [
    p7zip
    git
    wget
    ripgrep
    fd
    unzip
    gnutls
    fzf
    vim 
  ];
}

