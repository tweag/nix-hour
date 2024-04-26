{ lib, config, ... }: {

  options.vpn.impl = lib.mkOption {
    type = lib.types.enum [ "wireguard" ];
  };

  config = lib.mkIf (config.vpn.impl == "wireguard") {
    networking.firewall = {
      allowedUDPPorts = [ config.vpn.server ];
    };
  };
}
