{ inputs, self, ... }:
let 
  colors = import ./colors/paradise.nix;
in
{
  config._module.args.globalArgs = {
    inherit inputs self;
    flake = self;
    conf = {
      colors = colors;
    };
  };
}
