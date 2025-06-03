{
  config,
  pkgs,
  inputs,
  ...
}:
# let
#   colorScheme = inputs.nix-colors.colorSchemes.gruvbox-material-dark-hard;
# in 
{
  home.username = "daksh";
  home.homeDirectory = "/home/daksh";
  
  imports = [
    # inputs.nixvim.homeManagerModules.nixvim
    inputs.nix-colors.homeManagerModules.default
    inputs.ags.homeManagerModules.default 
    ./files.nix
    ./appearance.nix
    ./others.nix
    ./packages.nix
    ../../modules/waybar/waybar.nix
    ../../modules/ags/ags.nix
    ../../modules/yazi/yazi.nix
    ../../modules/emacs/emacs.nix
    ../../modules/bat/bat.nix
    ../../modules/btm/btm.nix
    ../../modules/cliphist/cliphist.nix
    ../../modules/eza/eza.nix
    ../../modules/starship/starship.nix
    ../../modules/wezterm/wezterm.nix
    ../../modules/zoxide/zoxide.nix
    ../../modules/dunst/dunst.nix
    ../../modules/zathura/zathura.nix
    # ../../modules/hypridle/hypridle.nix
    # ../../modules/hyprlock/hyprlock.nix
    # ../../modules/thunar/thunar.nix
    # ../../modules/neovim/neovim.nix
  ];


  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/daksh/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_STYLE_OVERRIDE = "kvantum";
    TERMINAL = "wezterm";
    TERM = "wezterm";
    GOPATH = "~/.go";
    PATH = "~/emacs.d/bin:~/.config/emacs/bin:$PATH";
  };

  home.sessionPath = [
    "~/emacs.d/bin:~/.config/emacs/bin:$PATH"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
