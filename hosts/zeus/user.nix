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
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  # Install zsh
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    interactiveShellInit = ''
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
    '';

    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "zoxide"
      ];
      # theme = "robbyrussell";
    };

    shellAliases = {
      edit = "sudo -e";
      update = "sudo nixos-rebuild switch --flake /home/daksh/nixos/hosts#zeus";
      r = "yazi";
      q = "exit";
      c = "clear";
      nv = "nvim";
      st = "df -h";
      ac = "ani-cli";
      sd = "shutdown now";
      re = "reboot";
      eza = "eza --icons";
      ls = "eza";
      l = "ls -l";
      ll = "ls -l";
      la = "ls -a";
      lla = "ls -la --header";
      lt = "ls --tree";
      ".." = "cd ..";
      battery="bat /sys/class/power_supply/BAT1/capacity";
    };

    histSize = 10000000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];
  };

  # environment.variables = {
  # 	PATH
  # };

  environment.variables.EDITOR = "nvim";
  environment.variables.VISUAL = "nvim";
  environment.variables.PATH = "~/emacs.d/bin:~/.config/emacs/bin:$PATH";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.daksh = {
    isNormalUser = true;
    description = "daksh";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
    #  thunderbird
    ];
  };

}
