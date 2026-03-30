{ ... }:
{
  programs.nixvim = {
    plugins = {
      nvim-lightbulb = {
        enable = true;
      };
      nvim-surround.enable = true;
      comment = {
        enable = true;
      };
      which-key = {
        enable = true;
      };

      flash = {
        enable = true;
        settings.labels = "rsthnaio";
      };

      # treesitter for home manager, kinda
      hmts.enable = true;

      nix = {
        enable = true;
      };

      autoclose = {
        enable = true;
      };
    };
  };
}
