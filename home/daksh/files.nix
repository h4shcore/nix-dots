{ ... }:
{

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
    "/etc/pipewire/pipewire-pulse.conf.d/10-adjustQuirkRules.conf".text = ''
              pulse.rules = [
          {
              matches = [
                  {
                      # all keys must match the value. ! negates. ~ starts regex.
                      #client.name                = "Firefox"
                      #application.process.binary = "teams"
                      #application.name           = "~speech-dispatcher.*"
                  }
              ]
              actions = {
                  update-props = {
                      #node.latency = 512/48000
                  }
                  # Possible quirks:"
                  #    force-s16-info                 forces sink and source info as S16 format
                  #    remove-capture-dont-move       removes the capture DONT_MOVE flag
                  #    block-source-volume            blocks updates to source volume
                  #    block-sink-volume              blocks updates to sink volume
                  #quirks = [ ]
              }
          }
          {
              # skype does not want to use devices that don't have an S16 sample format.
              matches = [
                   { application.process.binary = "teams" }
                   { application.process.binary = "teams-insiders" }
                   { application.process.binary = "skypeforlinux" }
              ]
              actions = { quirks = [ force-s16-info ] }
          }
          {
              # firefox marks the capture streams as don't move and then they
              # can't be moved with pavucontrol or other tools.
              matches = [ { application.process.binary = "firefox" } ]
              actions = { quirks = [ remove-capture-dont-move ] }
          }
          {
              # speech dispatcher asks for too small latency and then underruns.
              matches = [ { application.name = "~speech-dispatcher.*" } ]
              actions = {
                  update-props = {
                      pulse.min.req          = 512/48000      # 10.6ms
                      pulse.min.quantum      = 512/48000      # 10.6ms
                      pulse.idle.timeout     = 5              # pause after 5 seconds of underrun
                  }
              }
          }
         {
              # prevent all sources matching "Chromium" from messing with the volume
              matches = [ { application.name = "~Chromium.*" } ]
              actions = { quirks = [ block-source-volume ] }
           
          }
          {
              matches = [ { application.process.binary = "Discord" } ]
              actions = { quirks = [ block-source-volume ] }
          }
      ]
    '';
  };
}
