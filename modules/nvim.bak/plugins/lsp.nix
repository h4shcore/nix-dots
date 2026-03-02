{ ... }:
{
  programs.nixvim = {
    plugins = {
      lsp-format = {
        enable = true;
        lspServersToEnable = "all";
        settings = {
        };
      };

      lspkind = {
        enable = true;

        settings = {
          cmp = {
            enable = true;
            menu = {
              nvim_lsp = "[LSP]";
              nvim_lua = "[api]";
              path = "[path]";
              buffer = "[buffer]";
            };
          };
        };
      };

      lsp = {
        enable = true;
        inlayHints = true;
        servers = {
          lua_ls.enable = true;
          # nixd.enable = true;
          nil_ls = {
            enable = true;
            settings.formatting.command = [ "nixfmt-classic" ];
          };
          rust_analyzer = {
            enable = true;
            installCargo = false;
            installRustc = false;
          };
          clangd.enable = true;
          bashls.enable = true;
          jsonls.enable = true;
          html.enable = true;
          cssls.enable = true;
          ts_ls.enable = true;
          pyright.enable = true;
        };
        keymaps = {
          silent = true;
          diagnostic = {
            "<leader>k" = "goto_prev";
            "<leader>j" = "goto_next";
          };

          lspBuf = {
            gd = "definition";
            gr = "references";
            gt = "type_definition";
            gi = "implementation";
            K = "hover";
            "<F2>" = "rename";
          };
        };
      };
    };
  };
}
