{
  inputs,
  system,
  ...
}:
{
  services.emacs = {
    enable = true;
    package = inputs.doom-emacs.packages.${system}.doom-emacs.override {
      doomPrivateDir = ./doom.d;
    };
  };
}
