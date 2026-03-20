{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ( pkgs.st.overrideAttrs (_: {
      src = ../../conf/suckless/st;
      patches = [ ];
    }))
    ( pkgs.dmenu.overrideAttrs (_: {
      src = ../../conf/suckless/dmenu;
      patches = [ ];
    }))
    slock
    surf
  ];
}
