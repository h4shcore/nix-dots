{ pkgs, ... }:
{
  programs.nixvim = {
    markview = {
      enable = true;
      package = pkgs.vimPLugins.markview-nvim;
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
