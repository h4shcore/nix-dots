{
  colorScheme,
  pkgs,
  ...
}:
{
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = false; # only required if uwsm is used.
  wayland.windowManager.hyprland.settings = {
    monitor = ",preferred,auto,1";

    "$terminal" = "wezterm";
    "$fileManager" = "wezterm start -- yazi";
    "$menu" = "wofi --show drun";
    "$browser" = "firefox";
    "$volume_control" = "pavucontrol";
    "$clipboard" = "cliphist list | rofi -dmenu | cliphist decode | wl-copy";

    general = {
      layout = "master";
      allow_tearing = false;
      gaps_workspaces = 10;
      gaps_in = 5;
      gaps_out = 5;
      border_size = 2;
      "col.active_border" = "rgb(${colorScheme.palette.base04})";
    };
    decoration = {
      rounding = 0;
      active_opacity = 1.00;
      inactive_opacity = 0.95;
    };
    animations = {
      enabled = "yes";
    };
    bezier = [
      "specialWorkSwitch, 0.05, 0.7, 0.1, 1"
      "emphasizedAccel, 0.3, 0, 0.8, 0.15"
      "emphasizedDecel, 0.05, 0.7, 0.1, 1"
      "standard, 0.2, 0, 0, 1"
    ];
    animation = [
      "layersIn, 1, 5, emphasizedDecel, slide"
      "layersOut, 1, 4, emphasizedAccel, slide"
      "fadeLayers, 1, 5, standard"

      "windowsIn, 1, 5, emphasizedDecel"
      "windowsOut, 1, 3, emphasizedAccel"
      "windowsMove, 1, 6, standard"
      "workspaces, 1, 5, standard"

      "specialWorkspace, 1, 4, specialWorkSwitch, slidefadevert 15%"

      "fade, 1, 6, standard"
      "fadeDim, 1, 6, standard"
      "border, 1, 6, standard"
    ];
    binds = {
      scroll_event_delay = 0;
    };

    # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
    dwindle = {
      pseudotile = true;
      force_split = 2; # always on right
      preserve_split = true; # You probably want this
      smart_split = true;
    };

    # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
    master = {
      new_status = "master";
    };

    # https://wiki.hyprland.org/Configuring/Variables/#misc
    misc = {
      "col.splash" = "0x${colorScheme.palette.base03}";
      focus_on_activate = true;

      force_default_wallpaper = 0; # Set to 0 or 1 to disable the anime mascot wallpapers
      disable_hyprland_logo = true; # If true disables the random hyprland logo / anime girl background. :(
    };
    input = {
      kb_layout = "us";
      kb_variant = "";
      kb_model = "";
      kb_options = "";
      kb_rules = "";

      follow_mouse = 1;

      sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

      touchpad = {
        natural_scroll = true;
        scroll_factor = 0.25;
      };
    };
    gestures = {
      workspace_swipe = true;
    };
    device = [
      {
        name = "razer-razer-deathadder-essential";
        sensitivity = -0.82;
      }
    ];

    "$mainMod" = "SUPER";

    "bind" = [
      "$mainMod, RETURN, exec, uwsm app -- $terminal"
      "$mainMod, E, exec, uwsm app -- $fileManager"
      "$mainMod, B, exec, uwsm app -- $browser"
      "$mainMod, R, exec, uwsm app -- $menu"
      "$mainMod, V, exec, uwsm app -- $clipboard"

      "$mainMod, Q, killactive,"
      "$mainMod SHIFT, SPACE, togglefloating,"
      "$mainMod, F, fullscreen,"

      # Move focus with mainMod + arrow keys
      "$mainMod, left,  movefocus, l"
      "$mainMod, h,     movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, l,     movefocus, r"
      "$mainMod, up,    movefocus, u"
      "$mainMod, k,     movefocus, u"
      "$mainMod, down,  movefocus, d"
      "$mainMod, j,     movefocus, d"

      # Move windows
      "$mainMod SHIFT, left,  swapwindow, l"
      "$mainMod SHIFT, h,     swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, l,     swapwindow, r"
      "$mainMod SHIFT, up,    swapwindow, u"
      "$mainMod SHIFT, k,     swapwindow, u"
      "$mainMod SHIFT, down,  swapwindow, d"
      "$mainMod SHIFT, j,     swapwindow, d"

      # Window resizing                     X   Y
      "$mainMod CTRL, left,  resizeactive, -60  0"
      "$mainMod CTRL, h,     resizeactive, -60  0"
      "$mainMod CTRL, right, resizeactive,  60  0"
      "$mainMod CTRL, l,     resizeactive,  60  0"
      "$mainMod CTRL, up,    resizeactive,  0  -60"
      "$mainMod CTRL, k,     resizeactive,  0  -60"
      "$mainMod CTRL, down,  resizeactive,  0   60"
      "$mainMod CTRL, j,     resizeactive,  0   60"

      # Switch workspaces with mainMod + [0-9]
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      # Special workspace (scratchpad)
      "$mainMod SHIFT, S, movetoworkspace, special:magic"
      "$mainMod, S, togglespecialworkspace, magic"
      "$mainMod, M, togglespecialworkspace, music"
      "$mainMod, D, togglespecialworkspace, communication"

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"

      # Screenshot a monitor
      "$mainMod, PRINT, exec, uwsm app -- hyprshot -m window"
      ", PRINT, exec, uwsm app -- hyprshot -m output"

      # Screenshot a region
      "$mainMod SHIFT, S, exec, uwsm app -- hyprshot -m region"

      # Screenshot a region and draw using flameshot
      "$mainMod SHIFT, PRINT, exec, uwsm app -- flameshot gui -r --path ~/Pictures/screenshots | wl-copy"

      #zoom
      "$mainMod SHIFT, mouse_down, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 * 1.1}')"
      "$mainMod SHIFT, mouse_up, exec, hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 * 0.9}')"
    ];

    # Move/resize windows with mainMod + LMB/RMB and dragging
    "bindm" = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    # Laptop multimedia keys for volume and LCD brightness
    "bindel" = [
      ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",XF86MonBrightnessUp, exec, brightnessctl s 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl s 5%-"
    ];

    # Requires playerctl
    "bindl" = [
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];

    "windowrule" = [
      # ######## Window rules ########
      # windowrule = opacity 0.95 override, fullscreen:0

      # windowrule = opaque, class:foot|equibop|org\.quickshell|imv|swappy|kitty|emacs  # They use native transparency or we want them opaque
      "center 1, floating:1, xwayland:0  # Center all floating windows (not xwayland cause popups)"

      # Float
      "float, class:guifetch  # FlafyDev/guifetch"
      "float, class:yad"
      "float, class:zenity"
      "float, class:wev"
      "float, class:org\.gnome\.FileRoller"
      "float, class:file-roller" # WHY IS THERE TWOOOOOOOOOOOOOOOO
      "float, class:blueman-manager"
      "float, class:com\.github\.GradienceTeam\.Gradience"
      "float, class:feh"
      "float, class:imv"
      "float, class:system-config-printer"
      "float, class:org\.quickshell"

      # Float, resize and center
      "float, class:foot, title:nmtui"
      "size 60% 70%, class:foot, title:nmtui"
      "center 1, class:foot, title:nmtui"
      "float, class:org\.gnome\.Settings"
      "size 70% 80%, class:org\.gnome\.Settings"
      "center 1, class:org\.gnome\.Settings"
      "float, class:org\.pulseaudio\.pavucontrol|yad-icon-browser"
      "size 60% 70%, class:org\.pulseaudio\.pavucontrol|yad-icon-browser"
      "center 1, class:org\.pulseaudio\.pavucontrol|yad-icon-browser"
      "float, class:nwg-look"
      "size 50% 60%, class:nwg-look"
      "center 1, class:nwg-look"

      # Special workspaces
      "workspace special:sysmon, class:btop"
      "workspace special:music, class:feishin|Spotify|Supersonic"
      "workspace special:music, initialTitle:Spotify( Free)?" # Spotify wayland, it has no class for some reason
      "workspace special:communication, class:discord|equibop|vesktop|whatsapp"

      # Dialogs
      "float, title:(Select|Open)( a)? (File|Folder)(s)?"
      "float, title:File (Operation|Upload)( Progress)?"
      "float, title:.* Properties"
      "float, title:Export Image as PNG"
      "float, title:GIMP Crash Debug"
      "float, title:Save As"
      "float, title:Library"

      # Picture in picture (resize and move done via script)
      "move 100%-w-2% 100%-w-3%, title:Picture(-| )in(-| )[Pp]icture  # Initial move so window doesn't shoot across the screen from the center"
      "keepaspectratio, title:Picture(-| )in(-| )[Pp]icture"
      "float, title:Picture(-| )in(-| )[Pp]icture"
      "pin, title:Picture(-| )in(-| )[Pp]icture"

      # Steam
      "rounding 0, title:, class:steam"
      "float, title:Friends List, class:steam"
      "immediate, class:steam_app_[0-9]+ " # Allow tearing for steam games
      "idleinhibit always, class:steam_app_[0-9]+ " # Always idle inhibit when playing a steam game

      # ATLauncher console
      "float, class:com-atlauncher-App, title:ATLauncher Console"

      # Autodesk Fusion 360
      "noblur, title:Fusion360|(Marking Menu), class:fusion360\.exe"

      # Ugh xwayland popups
      "nodim, xwayland:1, title:win[0-9]+"
      "noshadow, xwayland:1, title:win[0-9]+"
      "rounding 0, xwayland:1, title:win[0-9]+"
    ];

    "windowrulev2" = [
      "suppressevent maximize, class:.*"

      # floating windows
      "float, title:Open Files"
      "float, class:xdg-desktop-portal-gtk"
      "float, class:nwg-*"
      "float, class:qemu"

      # Fix some dragging issues with XWayland
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

      # hide xwaylandvideobridge window
      "opacity 0.0 override, class:^(xwaylandvideobridge)$"
      "noanim, class:^(xwaylandvideobridge)$"
      "noinitialfocus, class:^(xwaylandvideobridge)$"
      "maxsize 1 1, class:^(xwaylandvideobridge)$"
      "noblur, class:^(xwaylandvideobridge)$"
      "nofocus, class:^(xwaylandvideobridge)$"
    ];

    "workspace" = [
      "w[tv1]s[false], gapsout:10"
      "f[1]s[false], gapsout:10"
    ];

    "layerrule" = [
      "animation fade, hyprpicker  # Colour picker out animation"
      "animation fade, logout_dialog  # wlogout"
      "animation fade, selection  # slurp"
      "animation fade, wayfreeze"
      "animation fade, class:rofi"

      # fuzzel
      "animation popin 80%, launcher"
      "blur, launcher"

      # rofi
      "blur, class:(rofi)"
      "blur, rofi"
    ];

    exec-once = [
      # Clipboard history
      "uwsm app -- wl-paste --type text --watch cliphist store"
      "uwsm app -- wl-paste --type image --watch cliphist store"

      # Wallpaper
      "uwsm app -- swww-daemon"

      # notification
      "uwsm app -- dunst"

      # bar
      "uwsm app -- waybar"

      # music
      "uwsm app -- mpd"

      # automount
      "uwsm app -- udiskie"
    ];
  };
}
