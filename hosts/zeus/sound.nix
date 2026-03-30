{
  lib,
  config,
  ...
}:
{
  # Enable sound with pipewire.
  services.pulseaudio = {
    enable = false;
  };

  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;
    extraConfig.pipewire-pulse = {
      "10-adjustQuirkRules" = {
        "pulse.rules" = [
          {
            "matches" = [
              { "application.process.binary" = "teams"; }
              { "application.process.binary" = "teams-insiders"; }
              { "application.process.binary" = "skypeforlinux"; }
            ];
            actions = {
              quirks = [
                "force-s16-info"
              ];
            };
          }
          {
            "matches" = [
              { "application.process.binary" = "firefox"; }
            ];
            actions = {
              quirks = [
                "remove-capture-dont-move"
              ];
            };
          }
          {
            "matches" = [
              { "application.process.binary" = "~speech-dispatcher.*"; }
            ];
            actions = {
              update-props = {
                "pulse.min.req" = "512/48000"; # 10.6ms
                "pulse.min.quantum" = "512/48000"; # 10.6ms
                "pulse.idle.timeout" = "5"; # pause after 5 seconds of underrun
              };
            };
          }
          {
            "matches" = [
              { "application.name" = "~Chromium.*"; }
            ];
            actions = {
              quirks = [
                "block-source-volume"
              ];
            };
          }
          {
            "matches" = [
              { "application.name" = "Discord"; }
            ];
            actions = {
              quirks = [
                "block-source-volume"
              ];
            };
          }
          {
            "matches" = [
              { "application.name" = "Chromium input"; }
            ];
            actions = {
              quirks = [
                "block-source-volume"
              ];
            };
          }
        ];
      };
    };

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
}
