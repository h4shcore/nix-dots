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
            chunk = {
              enabled = true;
              only_current = true;
              char = {
                arrow = "─";
                corner_top = "╭";
                corner_bottom = "╰";
              };
              hl = "SnacksIndentScope";
            };
          };
          animate = {
            enabled = true;
          };
        };
      };
    };
  };
}
