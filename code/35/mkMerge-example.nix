let
  lib = import <nixpkgs/lib>;
in
lib.evalModules {
  modules = [
    ({ lib, ... }: {
      options.test = lib.mkOption {
        type = lib.types.attrsOf lib.types.int;
      };

      config.test = {
        x = 10;
        y = 20;
      };
      # Almost the same thing
      config.test = lib.mkMerge [
        { x = 10; }
        { y = 20; }
      ];
    })
  ];
}
