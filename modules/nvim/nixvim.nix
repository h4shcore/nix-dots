{ ... }:
{
  imports = [
    ./keymaps.nix
    ./plugins/colorizer.nix
    ./plugins/colorscheme.nix
    ./plugins/cord.nix
    ./plugins/barbar.nix
    ./plugins/lualine.nix
    ./plugins/lsp.nix
    ./plugins/markview.nix
    # ./plugins/treesitter.nix
    ./plugins/devicons.nix
    ./plugins/gitsigns.nix
    ./plugins/opts.nix
    ./plugins/cmp.nix
    ./plugins/lint.nix
    ./plugins/telescope.nix
    ./plugins/floatterm.nix
    ./plugins/snacks.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    performance.byteCompileLua.enable = true;
    performance.byteCompileLua.configs = true;
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    globalOpts = {
    };

    opts = {
      relativenumber = true;
      number = true;
      undofile = true;
      ignorecase = true;
      incsearch = true;
      fileencoding = "utf-8";
      termguicolors = true;
      spell = false;
      wrap = true;

      tabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      autoindent = true;
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    diagnostic.settings = {
      severity_sort = true;
      update_in_insert = false;
      underline = true;
      virtual_text = true;
    };
  };
}
