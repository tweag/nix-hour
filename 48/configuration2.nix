{ config, pkgs, ... }:
let

  pinger = pkgs.writeShellApplication {
    name = "pinger";
    runtimeInputs = [
      pkgs.netcat-gnu
    ];
    text = ''
      nc -v machine-1 ${toString config.allMachines.foo.config.services.airsonic.port}
    '';
  };
in {
  boot.loader.grub.device = "nodev";
  fileSystems."/".device = "/something";
  system.stateVersion = "23.11";

  networking.hostName = "machine-2";

  environment.systemPackages = [
    pinger
  ];
}
