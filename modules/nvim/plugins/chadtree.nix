{ ... }:
{
  programs.nixvim = {
    plugins = {
      chadtree = {
        enable = true;
        xdg = true;
        settings = {
          view = {
            openDirection = "right";
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
