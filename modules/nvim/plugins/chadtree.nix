{ ... }:
{
  programs.nixvim = {
    plugins = {
      chadtree = {
        enable = true;
settings = {
          view = {
            openDirection = "left";
            width = 30;
          };
          options = {
            showHidden = true;
          };
          keymap = {
            fileOperations = {
              trash = [ "d" ];
              cut = [ "x" ];
            };
          };
        };
      };
    };
  };
}
