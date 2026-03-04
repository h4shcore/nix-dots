{ lib, ... }:
{
  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
      type = lib.types.enum [
        "gruvbox"
        "paradise"
        "radium"
        "yoru"
      ];
    };
  };
}
