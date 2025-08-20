{ ... }:
{
  xdg.mimeApps = {
    enable = true;
    associations.added = {
      "text/plain" = [ "nvim.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/*" = [ "swayimg.desktop" ];
      "image/jpeg" = [ "swayimg.desktop" ];
      "image/png" = [ "swayimg.desktop" ];
      "image/webp" = [ "swayimg.desktop" ];
      "image/gif" = [ "swayimg.desktop" ];
      "video/png" = [ "mpv.desktop" ];
      "video/jpg" = [ "mpv.desktop" ];
      "video/*" = [ "mpv.desktop" ];
      "inode/directory" = [ "thunar.desktop" ];
      "application/x-shellscript" = [ "wezterm.desktop" ];
    };
    defaultApplications = {
      "text/plain" = [ "nvim.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "image/*" = [ "swayimg.desktop" ];
      "image/jpeg" = [ "swayimg.desktop" ];
      "image/png" = [ "swayimg.desktop" ];
      "image/webp" = [ "swayimg.desktop" ];
      "image/gif" = [ "swayimg.desktop" ];
      "video/png" = [ "mpv.desktop" ];
      "video/jpg" = [ "mpv.desktop" ];
      "video/*" = [ "mpv.desktop" ];
      "inode/directory" = [ "thunar.desktop" ];
      "application/x-shellscript" = [ "wezterm.desktop" ];
      "x-scheme-handler/http" = ["firefox.desktop"];
      "x-scheme-handler/https"=["firefox.desktop"];
      "x-scheme-handler/chrome"=["firefox.desktop"];
      "text/html"=["firefox.desktop"];
      "application/x-extension-htm"=["firefox.desktop"];
      "application/x-extension-html"=["firefox.desktop"];
      "application/x-extension-shtml"=["firefox.desktop"];
      "application/xhtml+xml"=["firefox.desktop"];
      "application/x-extension-xhtml"=["firefox.desktop"];
      "application/x-extension-xht"=["firefox.desktop"];
    };
  };
}
