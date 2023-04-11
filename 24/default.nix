let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/5a156c2e89c1eca09b40bcdcee86760e0e4d79a9.tar.gz") {
    config = {};
    overlays = [];
  };
in
pkgs.nixosTest {
  name = "myService";
  nodes.machine = {
    imports = [ ./module.nix ];

    services.myService = {
      enable = true;
      passwordFile = "/root/mySecretKey";
    };

    systemd.services.mySecretGenerator = {
      wantedBy = [ "multi-user.target" ];
      before = [ "myService.service" ];
      script = "${pkgs.pwgen}/bin/pwgen 20 1 > /root/mySecretKey";
    };
  };

  testScript = ''
    start_all()
    machine.wait_for_unit("myService.service")
    machine.succeed("journalctl -u myService.service --grep='The secret is'")
  '';
}
