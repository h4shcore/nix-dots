{ ... }:
{
  programs.nixvim = {
    plugins = {
      treesitter = {
        enable = true;
        nixvimInjections = true;
        folding = false;
        settings = {
          indent.enable = true;
          highlight.enable = true;
          ensure_installed = [
            "go"
            "nix"
            "markdown"
            "markdown_inline"
            "python"
            "rust"
            "yaml"
            "toml"
            "c"
            "cpp"
            "bash"
            "cmake"
            "dockerfile"
            "json"
          ];
          auto_install = true;
        };
      };
      treesitter-refactor = {
        enable = true;
        settings = {
          highlight_definitions = {
            enable = true;
            # Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = false;
          };
        };
      };
    };
  };
}
