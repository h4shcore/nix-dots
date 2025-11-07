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
    shellAliases = {
      c = "clear";
      r = "yazi";
      q = "exit";
      nv = "nvim";
    };
  };
}
