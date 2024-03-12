{ lib, config, options, baz, specialArgs }: {

  imports = [
    baz
  ];

  options.foo = lib.mkOption {
    type = lib.types.nullOr lib.types.int;
    default = null;
  };

  options.fooString = lib.mkOption {
    type = lib.types.nullOr lib.types.str;
  };

  options.debug = lib.mkOption {
    type = lib.types.raw;
    default = specialArgs;
  };

  #config._module.args.baz = ./other-module.nix;

  config.foo = 10;
  config.fooString = lib.mapNullable toString config.foo;

}
