{ lib, pkgs, config, ... }: {

  options.etc = lib.mkOption {
    type = lib.types.attrsOf lib.types.path;
    default = { };
    description = ''
      Specifies which paths are in /etc/
    '';
  };

  options.etcCombined = lib.mkOption {
    type = lib.types.package;
    default = pkgs.linkFarm "etc"
      (lib.mapAttrsToList (name: value: {
        name = name;
        path = value;
      }) config.etc);
  };

  config._module.args.pkgs = import <nixpkgs> {
    config = {};
    overlays = [];
  };

  config.etc.foo = pkgs.writeText "foo" ''
    foo configuration
  '';
  config.etc.bar = pkgs.writeText "bar" ''
    bar configuration
  '';

}
