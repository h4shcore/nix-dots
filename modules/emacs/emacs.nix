{
  pkgs,
  ...
}:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk; # replace with pkgs.emacs-gtk, or a version provided by the community overlay if desired.
    extraConfig = ''
      (setq standard-indent 2)

      ;; Set up MELPA to install packages from it
      (require 'package)
      (setq package-archives '(("melpa" . "https://melpa.org/packages/")))
      (package-initialize)

      ;; Install Evil mode if it's not already installed
      (unless (package-installed-p 'evil)
        (package-refresh-contents)
        (package-install 'evil))

      ;; Enable Evil mode
      (evil-mode 1)

      ;; Optional: Customize Evil mode behavior
      (setq evil-want-integration t)
      (setq evil-want-keybinding nil)
    '';
  };
}
