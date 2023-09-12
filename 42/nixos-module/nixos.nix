import <nixpkgs/nixos> {
  configuration = { lib, config, modulesPath, ... }: {

    imports = [
      (modulesPath + "/profiles/minimal.nix")
    ];

    options.debug = lib.mkOption {
      type = lib.types.raw;
      default = lib.attrNames config._module.args;
    };

  };
}
