{
  mgr = {
    cwd = {
      fg = "#8AA6A2"; # base0C
    };

    hovered = {
      reversed = true;
      bold = true;
    };
    preview_hovered = {
      underline = true;
    };

    find_keyword = {
      fg = "#8C977D"; # base0B
      italic = true;
    };
    find_position = {
      fg = "#D9BC8C"; # base09
      bg = "reset";
      italic = true;
    };

    marker_copied = {
      fg = "#8C977D"; # base0B
      bg = "#8C977D"; # base0B
    };
    marker_cut = {
      fg = "#A988B0"; # base0E
      bg = "#A988B0"; # base0E
    };
    marker_marked = {
      fg = "#8AA6A2"; # base0C
      bg = "#8AA6A2"; # base0C
    };
    marker_selected = {
      fg = "#E8E3E3"; # base06
      bg = "#E8E3E3"; # base06
    };

    tab_active = {
      fg = "#151515"; # base00
      bg = "#BBB6B6"; # base04
    };
    tab_inactive = {
      fg = "#BBB6B6"; # base04
      bg = "#2E2E2E"; # base02
    };
    tab_width = 1;

    count_copied = {
      fg = "#151515"; # base00
      bg = "#8C977D"; # base0B
    };
    count_cut = {
      fg = "#151515"; # base00
      bg = "#A988B0"; # base0E
    };
    count_selected = {
      fg = "#151515"; # base00
      bg = "#E8E3E3"; # base06
    };

    border_symbol = "│";
    border_style = {
      fg = "#424242"; # base03
    };
  };

  status = {

    mode_normal = {
      fg = "#151515"; # base00
      bg = "#2E2E2E"; # base02
      bold = true;
    };

    mode_select = {
      fg = "#151515"; # base00
      bg = "#D9BC8C"; # base09
      bold = true;
    };
    mode_unset = {
      fg = "#151515"; # base00
      bg = "#8C977D"; # base0B
      bold = true;
    };

    progress_label = {
      fg = "#E8E3E3"; # base05
      bold = true;
    };
    progress_normal = {
      fg = "#2E2E2E"; # base02
      bg = "#1F1F1F"; # base01
    };
    progress_error = {
      fg = "#B66467"; # base08
      bg = "#1F1F1F"; # base01
    };

    permissions_t = {
      fg = "#2E2E2E"; # base02
    };
    permissions_r = {
      fg = "#8C977D"; # base0B
    };
    permissions_w = {
      fg = "#B66467"; # base08
    };
    permissions_x = {
      fg = "#8C977D"; # base0B
    };
    permissions_s = {
      fg = "#424242"; # base03
    };
  };

  select = {
    border = {
      fg = "#8AA6A2"; # base0C
    };
    active = {
      fg = "#A988B0"; # base0E
      bold = true;
    };
    inactive = { };
  };

  input = {
    border = {
      fg = "#E8E3E3"; # base05
    };
    title = { };
    value = { };
    selected = {
      reversed = true;
    };
  };

  tasks = {
    border = {
      fg = "#2E2E2E"; # base02
    };
    title = { };
    hovered = {
      underline = true;
    };
  };

  which = {
    mask = {
      bg = "#1F1F1F"; # base01
    };
    cand = {
      fg = "#8AA6A2"; # base0C
    };
    rest = {
      fg = "#424242"; # base03
    };
    desc = {
      fg = "#D9BC8C"; # base09
    };
    separator = "  ";
    separator_style = {
      fg = "#2E2E2E"; # base02
    };
  };

  help = {
    on = {
      fg = "#8AA6A2"; # base0C
    };
    run = {
      fg = "#A988B0"; # base0E
    };
    hovered = {
      reversed = true;
      bold = true;
    };
    footer = {
      fg = "#1F1F1F"; # base01
      bg = "#BBB6B6"; # base04
    };
  };

  notify = {
    title_info = {
      fg = "#8C977D"; # base0B
    };
    title_warn = {
      fg = "#E8E3E3"; # base06
    };
    title_error = {
      fg = "#A988B0"; # base0E
    };
  };

  filetype = {
    rules = [
      {
        mime = "image/*";
        fg = "#A988B0"; # base0E
      }
      {
        mime = "{audio,video}/*";
        fg = "#D9BC8C"; # base09
      }
      {
        mime = "application/*zip";
        fg = "#B66467"; # base08
      }
      {
        mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}";
        fg = "#B66467"; # base08
      }
      {
        mime = "application/{pdf,doc,rtf,vnd.*}";
        fg = "#8C977D"; # base0B
      }
      {
        name = "*";
        fg = "#E8E3E3"; # base05
      }
      {
        name = "*/";
        fg = "#8AA6A2"; # base0C
      }
    ];
  };
}
