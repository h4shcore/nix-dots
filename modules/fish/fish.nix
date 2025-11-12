{ ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      # enable vi mode
      set -g fish_key_bindings fish_vi_key_bindings
      # set nvim as manpage viewer
      set -gx MANPAGER 'nvim +Man!'
    '';
    shellAbbrs = {
      # git
      gd = "git diff";
      ga = "git add .";
      gc = "git commit -am";
      gl = "git log";
      gs = "git status";
      gst = "git stash";
      gsp = "git stash pop";
      gp = "git push";
      gpl = "git pull";
      gsw = "git switch";
      gsm = "git switch main";
      gb = "git branch";
      gbd = "git branch -d";
      gco = "git checkout";
      gsh = "git show";

      # ls
      l = "ls -l";
      ll = "ls -l";
      la = "ls -a";
      lla = "ls -la --header";
      lt = "ls --tree";

      # term
      c = "clear";
      r = "yazi";
      q = "exit";
      nv = "nvim";
      sd = "shutdown now";
      re = "reboot";

      # nix
      nd = "nix develop path:. -c zsh";
      nr = "sudo nixos-rebuild switch --flake ~/nixos/hosts#zeus";
      ncd = "sudo nix-collect-garbage -d";
      ns = "nix-search";
    };
  };
}
