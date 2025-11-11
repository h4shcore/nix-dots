{ colorScheme, hostname, ... }:
{
  programs.waybar = {
    enable = true;

    settings = [
      {
        position = "top";
        height = 20;
        spacing = 4;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "hyprland/window"
        ];
        modules-right = [
          "group/tray-expander"
          "privacy"
          "pulseaudio"
          "network"
          "bluetooth"
          "clock"
        ];

        "hyprland/workspaces" = {
          "active-only" = false;
          "disable-scroll" = true;
          "all-outputs" = true;
          "warp-on-scroll" = false;
          "format" = "{name}";
        };
        "hyprland/window" = {
          "format" = "[ {title} ]";
        };
        "tray" = {
          "spacing" = 10;
        };
        "clock" = {
          "tooltip-format" = "<tt><small>{calendar}</small></tt>";
          "format-alt" = "{:%Y-%m-%d}";
        };
        "calendar" = {
          "mode" = "month";
          "mode-mon-col" = 3;
          "weeks-pos" = "right";
          "on-scroll" = 1;
          "format" = {
            "months" = "<span color='#${colorScheme.palette.base05}'><b>{}</b></span>";
            "days" = "<span color='#${colorScheme.palette.base04}'><b>{}</b></span>";
            "weekdays" = "<span color='#${colorScheme.palette.base03}'><b>{}</b></span>";
            "today" = "<span color='#${colorScheme.palette.base08}'><b><u>{}</u></b></span>";
          };
        };
        backlight = {
          "format" = "{percent}% {icon}";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
          ];
          "on-scroll-up" = "brightnessctl s 1+";
          "on-scroll-down" = "brightnessctl s 1-";
        };
        "battery" = {
          "states" = {
            "good" = 95;
            "warning" = 30;
            "critical" = 15;
          };
          "format" = "{capacity}% {icon}";
          "format-full" = "{capacity}% {icon}";
          "format-plugged" = "{capacity}% ";
          "format-alt" = "{time} {icon}";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
          ];
          "tooltip-format" = "{timeTo}\nPD : {power} W";
        };
        "network" = {
          "format" = " ";
          "tooltip-format" = "{essid} ({signalStrength}%) ";
          "format-linked" = "{ifname} (No IP) ";
          "format-disconnected" = "Disconnected ⚠";
          "format-alt" = "{ifname}: {ipaddr}/{cidr}";
        };
        "bluetooth" = {
          "format" = "";
          "format-disabled" = "";
          "format-connected" = " {num_connections} ";
          "tooltip-format" = "{controller_alias}\t{controller_address}";
          "tooltip-format-connected" = "{controller_alias}\t{controller_address}\n\n{device_enumerate}";
          "tooltip-format-enumerate-connected" = "{device_alias}\t{device_address}";
          "on-click" = "flatpak run io.github.kaii_lb.Overskride";
        };
        "group/tray-expander" = {
          "orientation" = "inherit";
          "drawer" = {
            "transition-duration" = 600;
            "children-class" = "tray-group-item";
          };
          "modules" = [
            "custom/expand-icon"
            "tray"
          ];
        };
        "custom/expand-icon" = {
          "format" = "> ";
          "tooltip" = false;
        };
        "pulseaudio" = {
          "format" = "{volume}% {icon}";
          "format-bluetooth" = "{volume}% {icon}";
          "format-bluetooth-muted" = "󰟎";
          "format-muted" = "󰝟 ";
          "format-source" = "{volume}% ";
          "format-source-muted" = "";
          "format-icons" = {
            "headphone" = [ "" ];
            "hands-free" = "";
            "headset" = [
              "󰟎"
              ""
            ];
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = [
              ""
              ""
              " "
            ];
          };
          "on-click" = "pavucontrol";
        };
      }
    ];

    style = ''
      * {
          /* `otf-font-awesome` is required to be installed for icons */
          font-family: Iosevka Nerd Font;
          font-size: 14px;
      }

      window#waybar {
          background-color: #${colorScheme.palette.base00};
          color: #${colorScheme.palette.base06};
          transition-property: background-color;
          transition-duration: .5s;
      }

      window#waybar.hidden {
          opacity: 0.2;
      }

      /*
      window#waybar.empty {
          background-color: transparent;
      }
      window#waybar.solo {
          background-color: #FFFFFF;
      }
      */

      button {
          /* Use box-shadow instead of border so the text isn't offset */
          box-shadow: inset 0 -3px transparent;
          /* Avoid rounded borders under each button name */
          border: none;
          border-radius: 0;
      }

      /* https://github.com/Alexays/Waybar/wiki/FAQ#the-workspace-buttons-have-a-strange-hover-effect */
      button:hover {
          background: inherit;
          box-shadow: inset 0 -3px #a89984;
      }

      /* you can set a style on hover for any module like this */
      #pulseaudio:hover {
          background-color: rgba(0,0,0,0);
      }

      #custom-expand-icon {
          color: #${colorScheme.palette.base06};
      }

      #workspaces button {
          padding: 0 5px;
          background-color: transparent;
          color: #${colorScheme.palette.base06};
      }

      #workspaces button:hover {
          background: rgba(0, 0, 0, 0.2);
          color: #a89984;
      }
      #workspaces button.active{
          color: #a89984;
      }

      #workspaces button.focused {
          background-color: #64727D;
          box-shadow: inset 0 -3px #a89984;
      }

      #workspaces button.urgent {
          background-color: #cc241d;
      }

      #mode {
          background-color: #64727D;
          box-shadow: inset 0 -3px #ffffff;
      }

      #bluetooth,
      #clock,
      #battery,
      #cpu,
      #memory,
      #disk,
      #temperature,
      #backlight,
      #network,
      #pulseaudio,
      #wireplumber,
      #custom-media,
      #tray,
      #mode,
      #idle_inhibitor,
      #scratchpad,
      #power-profiles-daemon,
      #mpd {
          padding: 0 10px;
          color: #${colorScheme.palette.base06};
      }

      #clock {
          margin-right: 10;
      }

      #window,
      #workspaces {
          margin: 0 4px;
      }

      /* If workspaces is the leftmost module, omit left margin */
      .modules-left > widget:first-child > #workspaces {
          margin-left: 10;
      }

      /* If workspaces is the rightmost module, omit right margin */
      .modules-right > widget:last-child > #workspaces {
          margin-right: 5;
      }

      #clock {
          background-color: rgba(0,0,0,0);
          color: #${colorScheme.palette.base06};
      }

      #battery {
          background-color: rgba(0,0,0,0);
          color: #${colorScheme.palette.base06};
      }

      #bluetooth {
          color: #${colorScheme.palette.base06};
      }

      #battery.charging, #battery.plugged {
          background-color: rgba(0,0,0,0);
          color: #98971a;
      }

      @keyframes blink {
          to {
              background-color: rgba(0,0,0,0);
              color: #000000;
          }
      }

      /* Using steps() instead of linear as a timing function to limit cpu usage */
      #battery.critical:not(.charging) {
          background-color: rgba(0,0,0,0);
          color: #cc241d;
          animation-name: none;
          animation-duration: 0.5s;
          animation-timing-function: steps(12);
          animation-iteration-count: infinite;
          animation-direction: alternate;
      }


      label:focus {
          background-color: #000000;
      }


      #network {
          background-color: rgba(0,0,0,0);
          color: #${colorScheme.palette.base06};
      }

      #network.disconnected {
          background-color: rgba(0,0,0,0);
          color : #cc241d;
      }

      #pulseaudio {
          background-color: rgba(0,0,0,0);
          color: #${colorScheme.palette.base06};
      }

      #pulseaudio.muted {
          background-color: rgba(0,0,0,0);
          color: #cc241d
      }

      #tray {
          background-color: rgba(0,0,0,0);
      }

      #tray > .passive {
          -gtk-icon-effect: dim;
      }

      #tray > .needs-attention {
          -gtk-icon-effect: highlight;
          background-color: #cc241d;
      }

      #privacy {
          padding: 0;
      }

      #privacy-item {
          padding: 0 5px;
          color: #${colorScheme.palette.base06};
      }

      #privacy-item.screenshare {
          background-color: rgba(0,0,0,0);
      }

      #privacy-item.audio-out {
          background-color: rgba(0,0,0,0);
      }
    '';

  };
}
