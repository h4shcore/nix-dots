{ ... }:
{
  programs = {
    qutebrowser = {
      enable = true;
      extraConfig = ''
        c.tabs.padding = {"bottom": 5, "left": 5, "right": 5, "top": 5}
        c.tabs.background = True

        c.colors.webpage.bg = '#151515'

        c.fonts.web.family.fantasy = 'Iosevka Nerd Font'
        c.fonts.tabs.selected = '14pt Iosevka Nerd Font'
        c.fonts.tabs.unselected = '14pt Iosevka Nerd Font'
        c.fonts.statusbar = '14pt Iosevka Nerd Font'
        c.fonts.completion.entry = '14pt Iosevka Nerd Font'
        c.fonts.hints = 'bold 14pt Iosevka Nerd Font'

        c.downloads.position = 'bottom'

        c.colors.webpage.darkmode.enabled = True
        # c.content.user_stylesheets = ['~/.config/qutebrowser/gruvbox.css']
        config.set('auto_save.session', True)

        c.editor.command = ["wezterm", "-e", "nvim", "{}"]

        bg0_hard = "#151515"
        bg0_soft = "#32302f"
        bg0_normal = "#151515"

        bg0 = bg0_normal
        bg1 = "#1F1F1F"
        bg2 = "#2E2E2E"
        bg3 = "#424242"
        bg4 = "#BBB6B6"

        fg0 = "#E8E3E3"
        fg1 = "#E8E3E3"
        fg2 = "#BBB6B6"
        fg3 = "#424242"
        fg4 = "#BBB6B6"

        bright_red = "#B66467"
        bright_green = "#8C977D"
        bright_yellow = "#D9BC8C"
        bright_blue = "#8DA3B9"
        bright_purple = "#A988B0"
        bright_aqua = "#8C977D"
        bright_gray = "#424242"
        bright_orange = "#D9BC8C"

        dark_red = "#B66467"
        dark_green = "#8C977D"
        dark_yellow = "#D9BC8C"
        dark_blue = "#8DA3B9"
        dark_purple = "#A988B0"
        dark_aqua = "#8AA6A2"
        dark_gray = "#BBB6B6"
        dark_orange = "#D9BC8C"

        ### Completion
        c.colors.completion.fg = [fg1, bright_aqua, bright_yellow]
        c.colors.completion.odd.bg = bg0
        c.colors.completion.even.bg = c.colors.completion.odd.bg
        c.colors.completion.category.fg = bright_blue
        c.colors.completion.category.bg = bg1
        c.colors.completion.category.border.top = c.colors.completion.category.bg
        c.colors.completion.category.border.bottom = c.colors.completion.category.bg
        c.colors.completion.item.selected.fg = fg0
        c.colors.completion.item.selected.bg = bg4
        c.colors.completion.item.selected.border.top = bg2
        c.colors.completion.item.selected.border.bottom = c.colors.completion.item.selected.border.top
        c.colors.completion.item.selected.match.fg = bright_orange
        c.colors.completion.match.fg = c.colors.completion.item.selected.match.fg
        c.colors.completion.scrollbar.fg = c.colors.completion.item.selected.fg
        c.colors.completion.scrollbar.bg = c.colors.completion.category.bg

        ### Context menu
        c.colors.contextmenu.disabled.bg = bg3
        c.colors.contextmenu.disabled.fg = fg3
        c.colors.contextmenu.menu.bg = bg0
        c.colors.contextmenu.menu.fg = fg2
        c.colors.contextmenu.selected.bg = bg2
        c.colors.contextmenu.selected.fg = c.colors.contextmenu.menu.fg

        ### Downloads
        c.colors.downloads.bar.bg = bg0
        c.colors.downloads.start.fg = bg0
        c.colors.downloads.start.bg = bright_blue
        c.colors.downloads.stop.fg = c.colors.downloads.start.fg
        c.colors.downloads.stop.bg = bright_aqua
        c.colors.downloads.error.fg = bright_red

        ### Hints
        c.colors.hints.fg = fg1
        c.colors.hints.bg = bg1
        c.colors.hints.match.fg = fg4

        ### Keyhint widget
        c.colors.keyhint.fg = fg4
        c.colors.keyhint.suffix.fg = fg0
        c.colors.keyhint.bg = bg0

        ### Messages
        c.colors.messages.error.fg = bg0
        c.colors.messages.error.bg = bright_red
        c.colors.messages.error.border = c.colors.messages.error.bg
        c.colors.messages.warning.fg = bg0
        c.colors.messages.warning.bg = bright_purple
        c.colors.messages.warning.border = c.colors.messages.warning.bg
        c.colors.messages.info.fg = fg2
        c.colors.messages.info.bg = bg0
        c.colors.messages.info.border = c.colors.messages.info.bg

        ### Prompts
        c.colors.prompts.fg = fg2
        c.colors.prompts.border = f'1px solid {bg1}'
        c.colors.prompts.bg = bg3
        c.colors.prompts.selected.bg = bg2

        ### Statusbar
        c.colors.statusbar.normal.fg = fg2
        c.colors.statusbar.normal.bg = bg0
        c.colors.statusbar.insert.fg = bg0
        c.colors.statusbar.insert.bg = dark_aqua
        c.colors.statusbar.passthrough.fg = bg0
        c.colors.statusbar.passthrough.bg = dark_blue
        c.colors.statusbar.private.fg = bright_purple
        c.colors.statusbar.private.bg = bg0
        c.colors.statusbar.command.fg = fg3
        c.colors.statusbar.command.bg = bg1
        c.colors.statusbar.command.private.fg = c.colors.statusbar.private.fg
        c.colors.statusbar.command.private.bg = c.colors.statusbar.command.bg
        c.colors.statusbar.caret.fg = bg0
        c.colors.statusbar.caret.bg = dark_purple
        c.colors.statusbar.caret.selection.fg = c.colors.statusbar.caret.fg
        c.colors.statusbar.caret.selection.bg = bright_purple
        c.colors.statusbar.progress.bg = bright_blue
        c.colors.statusbar.url.fg = fg4
        c.colors.statusbar.url.error.fg = dark_red
        c.colors.statusbar.url.hover.fg = bright_orange
        c.colors.statusbar.url.success.http.fg = bright_red
        c.colors.statusbar.url.success.https.fg = fg0
        c.colors.statusbar.url.warn.fg = bright_purple

        ### Tabs
        c.colors.tabs.bar.bg = bg0
        c.colors.tabs.indicator.start = bright_blue
        c.colors.tabs.indicator.stop = bright_aqua
        c.colors.tabs.indicator.error = bright_red
        c.colors.tabs.odd.fg = fg2
        c.colors.tabs.odd.bg = bg2
        c.colors.tabs.even.fg = c.colors.tabs.odd.fg
        c.colors.tabs.even.bg = bg3
        c.colors.tabs.selected.odd.fg = fg2
        c.colors.tabs.selected.odd.bg = bg0
        c.colors.tabs.selected.even.fg = c.colors.tabs.selected.odd.fg
        c.colors.tabs.selected.even.bg = bg0
        c.colors.tabs.pinned.even.bg = bright_green
        c.colors.tabs.pinned.even.fg = bg2
        c.colors.tabs.pinned.odd.bg = bright_green
        c.colors.tabs.pinned.odd.fg = c.colors.tabs.pinned.even.fg
        c.colors.tabs.pinned.selected.even.bg = bg0
        c.colors.tabs.pinned.selected.even.fg = c.colors.tabs.selected.odd.fg
        c.colors.tabs.pinned.selected.odd.bg = c.colors.tabs.pinned.selected.even.bg
        c.colors.tabs.pinned.selected.odd.fg = c.colors.tabs.selected.odd.fg
      '';
    };
  };
}
