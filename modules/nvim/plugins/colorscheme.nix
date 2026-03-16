{ ... }:
{
  programs.nixvim = {
    # colorschemes = {
    #   everforest = {
    #     enable = true;
    #     settings = {
    #       transparent_background = 2;
    #     };
    #   };
    # };
    colorschemes = {
      gruvbox = {
        enable = true;
        settings = {
          transparent_mode = true;
          terminal_colors = true;
        };
      };
    };
  };
}
