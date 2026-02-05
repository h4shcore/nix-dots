{ pkgs, lib, ... }:
{
  programs.eww = {
    enable = true;
    package = pkgs.eww;
    configDir = lib.cleanSourceWith {
      src = ./.;
    };
  };
}
