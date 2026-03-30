{ ... }:
{
  programs.nixvim = {
    plugins = {
      floaterm = {
        enable = true;
        settings = {
          title = "Terminal";
          height = 0.8;
          shell = "fish";
          autoclose = 1;
        };
      };
    };
  };
}
