{ lib, config, ... }: {
  options.ip = lib.mkOption {
    type = lib.types.str;
  };
  options.ip' = lib.mkOption {
    type = lib.types.str;
  };

  config = {
    boot.loader.grub.device = "nodev";
    fileSystems."/".device = "/devst";
    system.stateVersion = "23.11";

    ip = "foo";
    ip' = "10.1.1.1";

    networking.hosts.${config.ip} = [ "server" ];

    assertions = [
      {
        assertion =
          let
            isValid = s: builtins.match (lib.fileContents ./ip.regex) s != null;
          in
          isValid config.ip || isValid config.ip';
        message = "Both `ip` and `ip'` aren't valid ipv4 addresses";
      }
    ];

  };
}
