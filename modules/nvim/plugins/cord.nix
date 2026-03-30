{ ... }:
{
  programs.nixvim = {
    plugins = {
      cord = {
        enable = true;
        settings = {
          editor = {
            client = "neovim";
            tooltip = "sybau";
          };
          # display = {
          #   theme = "minecraft";
          #   flavour = "dark";
          # };
        };
      };
    };
  };
}
