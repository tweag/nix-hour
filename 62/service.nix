{ pkgs, config, ... }:
{

  # This file determines what the service prints,
  # changing the text just requires a reload of the service, not a restart!
  environment.etc.output.source =
    pkgs.writeText "output" "Hello Silvan!";

  systemd.services.myService = {
    # Needs https://github.com/NixOS/nixpkgs/pull/288821
    serviceConfig.Type = "notify-reload";
    # Not necessary with notify-reload and the systemd-notify below!
    #serviceConfig.ExecReload = "${lib.getBin pkgs.coreutils}/bin/kill -HUP $MAINPID";
    reloadTriggers = [ config.environment.etc.output.source ];
    wantedBy = [ "multi-user.target" ];
    script = ''

      outputFile=$(mktemp)
      loadOutput() {
        echo "Loading output"
        cp -f /etc/output "$outputFile"
      }
      reloadOutput() {
        systemd-notify --reloading
        loadOutput
        systemd-notify --ready
      }
      loadOutput
      trap reloadOutput HUP

      trap 'echo "Stopping"' EXIT
      echo "Starting"

      cat "$outputFile"
      systemd-notify --ready
      while true; do
        sleep 5
        cat "$outputFile"
      done
    '';
  };

}
