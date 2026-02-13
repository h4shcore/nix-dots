{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
{
  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.users.daksh = {
  #   isNormalUser = true;
  #   description = "daksh";
  #   extraGroups = [ "networkmanager" "wheel" ];
  #   packages = with pkgs; [
  #   #  thunderbird
  #   ];
  # };

  programs.fish.enable = true;
  users = {
    defaultUserShell = pkgs.fish;
    users.daksh = {
      isNormalUser = true;
      description = "daksh";
      extraGroups = [
        "networkmanager"
        "wheel"
        "docker"
      ];
    };
  };
}
