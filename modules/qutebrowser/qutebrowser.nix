{ ... }:
{
  programs = {
    qutebrowser = {
      enable = true;
      extraConfig = ''
        c.tabs.padding = {"bottom": 5, "left": 5, "right": 5, "top": 5}
        c.tabs.background = True

        c.colors.webpage.bg = '#282828'

        c.fonts.web.family.fantasy = 'Iosevka Nerd Font'
        c.fonts.tabs.selected = '14pt Iosevka Nerd Font'
        c.fonts.tabs.unselected = '14pt Iosevka Nerd Font'
        c.fonts.statusbar = '14pt Iosevka Nerd Font'
        c.fonts.completion.entry = '14pt Iosevka Nerd Font'
        c.fonts.hints = 'bold 14pt Iosevka Nerd Font'

        c.downloads.position = 'bottom'

        c.colors.webpage.darkmode.enabled = True
        config.set('auto_save.session', True)

        c.editor.command = ["wezterm", "-e", "nvim", "{}"]
      '';
    };
  };
}
