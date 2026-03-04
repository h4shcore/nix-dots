{ ... }:
{
  programs.nixvim = {
    plugins = {
      chadtree = {
        enable = true;
        settings = {
          xdg = true;
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
