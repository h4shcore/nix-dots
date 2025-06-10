{ pkgs, ... }:
# {
#   programs.emacs = {
#     enable = true;
#     package = pkgs.emacs-pgtk;
#     # extraConfig = ''
#     #   (setq standard-indent 2)
#     # '';
#   };
#
#   # home.file."~/.config/emacs/init.el".source = ./dotfiles/emacs/init.el;
#   # home.file."~/.config/emacs/config.el".source = ./dotfiles/emacs/config.el;
#   # home.file."~/.config/emacs/packages.el".source = ./dotfiles/emacs/packages.el;
# }
{
programs.emacs = {
  enable = true;
  package = pkgs.emacs-pgtk.pkgs.withPackages (epkgs: with epkgs; [
    use-package
    evil
    gruvbox-theme
    lsp-mode
    tree-sitter
    tree-sitter-langs
    # tree-sitter-grammars
    rustic
  ]);
};
}
