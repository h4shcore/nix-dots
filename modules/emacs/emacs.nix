{ pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;
    # extraConfig = ''
    #   (setq standard-indent 2)
    # '';
  };

  # home.file."~/.config/emacs/init.el".source = ./dotfiles/emacs/init.el;
  # home.file."~/.config/emacs/config.el".source = ./dotfiles/emacs/config.el;
  # home.file."~/.config/emacs/packages.el".source = ./dotfiles/emacs/packages.el;
}
