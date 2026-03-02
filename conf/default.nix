{ inputs, self, ... }:
let
  colors = import ./colors.nix;
in
{
  _module.args = {
    inherit inputs self colors;
  };
}
