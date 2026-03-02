{ ... }:
{
  programs.nixvim = {
    plugins = {
      telescope = {
        enable = true;
        settings.defaults = {
          mappings = {
            i = {
              "<C-j>" = {
                __raw = "require('telescope.actions').move_selection_next";
              };
              "<C-k>" = {
                __raw = "require('telescope.actions').move_selection_previous";
              };
            };
          };
          file_ignore_patterns = [
            "^.git/"
            "^.mypy_cache/"
            "^__pycache__/"
            "%.ipynb"
            "^node_modules/"
            "*.o"
            "*.class"
            "*.cache"
            "*.out"
            "*.tar"
            "*.gz"
          ];
          set_env.COLORTERM = "truecolor";
        };
      };
    };
  };
}
