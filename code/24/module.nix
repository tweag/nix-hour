{ lib, config, pkgs, ... }:
let
  cfg = config.services.myService;
in {

  options.services.myService = {
    enable = lib.mkEnableOption "myService";

    passwordFile = lib.mkOption {
      type = lib.types.path;
    };
  };

  config = lib.mkIf cfg.enable {

    systemd.services.myService = {
      wantedBy = [ "multi-user.target" ];
      path = [ pkgs.bash ];
      serviceConfig = {
        DynamicUser = true;
        LoadCredential = [ "password:${cfg.passwordFile}" ];
        Type = "notify";
        # Needed for systemd-notify to work in ./myScript.sh
        # See also https://unix.stackexchange.com/a/331694/214651
        NotifyAccess = "all";
        ExecStart = "${./service.sh} \${CREDENTIALS_DIRECTORY}/password";
      };
    };

  };

}
