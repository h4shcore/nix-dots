{ ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      l = "eza -l -a --icons --no-user --git";
      nv = "nvim";
      q = "exit";
      rm = "trash -v";
      c = "code .";
      copy = "wl-copy";
      find = "fd";
      nd = "nix develop -c zsh";
      nr = "sudo nixos-rebuild switch --flake ~/nixos/hosts#zeus";
      ncd = "sudo nix-collect-garbage -d";
      ns = "nix-search";
      du = "dust";
      ps = "procs";
    };
    history.size = 10000;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "copybuffer"
        "docker"
        "extract"
        "zoxide"
        "starship"
        "ssh"
        "colored-man-pages"
        "ssh-agent"
        "gpg-agent"
      ];
    };
    initContent = (builtins.readFile ./.zshrc);
  };
}
