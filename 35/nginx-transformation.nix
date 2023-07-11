import <nixpkgs/nixos> {

  configuration =
    { lib, pkgs, config, ... }:
    let
      cfg = {
        "/path/goes/here" = { name = "test.domain.tld"; serve.enable = true; };
        "/path/goes/there" = { name = "test2.domain.tld"; serve.enable = true; };
      };
    in {
      services.nginx = {
        enable = lib.mkDefault true;
        additionalModules = [ pkgs.nginxModules.pam ];


        virtualHosts = lib.mkMerge
          (lib.mapAttrsToList
            (path: value: {
              ${value.name} = {
                enableACME = config.security.acme.acceptTerms;
                forceSSL = config.security.acme.acceptTerms;
                locations."/" = {
                  root = "${path}";
                };
              };
            })
            (lib.filterAttrs
              (path: value: value.serve.enable)
              cfg
            )
          );
      };
    };
}
