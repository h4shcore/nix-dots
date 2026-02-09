{ ... }:
{
  programs.nixvim = {
    plugins = {
      snacks = {
        enable = true;
        autoLoad = true;
        settings = {
          indent = {
            enabled = true;
          };
        };
      };
    };
  };
}
