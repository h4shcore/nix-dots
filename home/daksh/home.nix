{
  config,
  pkgs,
  inputs,
  colorScheme,
  ...
}:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "daksh";
  home.homeDirectory = "/home/daksh";

  imports = [
    ../common.nix
    ./appearance.nix
    ./files.nix
    ./others.nix
    ./packages.nix
    ./packages.nix
    ../../modules/alacritty/alacritty.nix
    ../../modules/bat/bat.nix
    ../../modules/bottom/bottom.nix
    ../../modules/dms/dms.nix
    ../../modules/eza/eza.nix
    ../../modules/eww/eww.nix
    ../../modules/mpv/mpv.nix
    ../../modules/tmux/tmux.nix
    ../../modules/cliphist/cliphist.nix
    ../../modules/dunst/dunst.nix
    ../../modules/helix/helix.nix
    ../../modules/nvim/nixvim.nix
    ../../modules/niri/niri.nix
    ../../modules/emacs/emacs.nix
    ../../modules/fish/fish.nix
    ../../modules/foot/foot.nix
    ../../modules/fuzzel/fuzzel.nix
    ../../modules/starship/starship.nix
    ../../modules/kitty/kitty.nix
    ../../modules/hyprland/hyprland.nix
    ../../modules/waybar/waybar.nix
    ../../modules/qutebrowser/qutebrowser.nix
    ../../modules/direnv/direnv.nix
    ../../modules/wezterm/wezterm.nix
    ../../modules/yazi/yazi.nix
    ../../modules/zoxide/zoxide.nix
    inputs.nixvim.homeModules.nixvim
    inputs.nix-colors.homeManagerModules.default
    inputs.dms.homeModules.dank-material-shell
  ];

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.

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
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
