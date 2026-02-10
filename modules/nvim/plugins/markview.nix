{ pkgs, ... }:
{
  programs.nixvim = {
    markview = {
      enable = true;
      package = pkgs.vimPlugins.markview-nvim;
      autoLoad = true;
      settings = {
        preview = {
          enable = true;
          enable_hybrid_mode = true;
        };
      };
    };
  };
}
