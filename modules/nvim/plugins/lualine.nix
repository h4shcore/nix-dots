{ ... }:
{
  programs.nixvim = {
    plugins = {
      lualine = {
        enable = true;
        settings = {
          options = {
            icons_enabled = false;
            theme = "auto";
            component_separators = "";
            section_separators = "";
          };
          # sections = {
          #   lualine_a = [ "mode" ];
          #   lualine_b = [ "branch" ];
          #   lualine_c = [ "filename" ];
          #   lualine_x = [ "lsp_status" ];
          #   lualine_y = [
          #     "searchcount"
          #     "selectioncount"
          #   ];
          #   lualine_z = [ "location" ];
          # };

          sections = {
          lualine_a = [ "mode" ];
          lualine_b = [ "branch" ];
          lualine_c = [ "filename" ];
          lualine_x = [
            {
              __raw = ''
                function()
                  local encoding = vim.o.fileencoding
                  if encoding == "" then
                    return vim.bo.fileformat .. " :: " .. vim.bo.filetype
                  else
                    return encoding .. " :: "
                      .. vim.bo.fileformat .. " :: "
                      .. vim.bo.filetype
                  end
                end
              '';
            }
          ];
          lualine_y = [ "progress" ];
          lualine_z = [ "location" ];
        };

        };
      };
    };
  };
}
