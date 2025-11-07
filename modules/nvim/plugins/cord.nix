{ ... }:
{
  programs.nixvim = {
    plugins = {
      programs.cord = {
        enable = true;
      };
    };
  };
}
