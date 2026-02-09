{
  pkgs,
  lib,
  config,
  ...
}:
{

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Optional, hint Electron apps to use Wayland:
  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Enable Hyprland
  programs.hyprland.enable = true;
  programs.hyprland.withUWSM = true;

  # Enable Niri
  # programs.niri.enable = true;
  # programs.xwayland.enable = true;

  # for hyprland
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-hyprland
    ];
    config.common.default = "*";
  };

  # for niri
  # xdg.portal = {
  #   enable = true;
  #   extraPortals = [
  #     pkgs.xdg-desktop-portal-gtk
  #     pkgs.xdg-desktop-portal-gnome
  #   ];
  #   config = {
  #     common.default = [ "gtk" ];
  #   };
  # };

  # Enable the GNOME Desktop Environment.
  # services.xserver.displayManager.gdm.enable = true;
  # services.xserver.desktopManager.gnome.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --asterisks --remember --time";
        user = "greeter";
      };
    };
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true;
}
