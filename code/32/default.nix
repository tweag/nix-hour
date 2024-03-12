{ pkgs ? import <nixpkgs> {
  overlays = [];
  config = {};
} }:

let
  _builtins = builtins;
in
let

  builtins = _builtins // {
    myFetcher = args: throw "implementation";
  };

  pkgs' = pkgs.extend (self: super: {
    myFetcher = args: throw "implementation";



    hello = super.hello.overrideAttrs (old: {

    });

    selfRefDrv = self.lib.makeOverridable
      ({ selfRefDrv, number }: {
        selfRefDrv = selfRefDrv.override {
          number = number + 1;
        };
        inherit number;
      })
      {
        selfRefDrv = self.selfRefDrv;
        number = 0;
      };

  });

  pkgs'' = pkgs'.appendOverlays [
    (self: super: {
      selfRefDrv = super.selfRefDrv.override {
        selfRefDrv = super.selfRefDrv;
      };
    })
  ];


  # Adds one
  f = x: x + 1;

  scopedImportTest = builtins.scopedImport {
    __sub = a: b: builtins.trace "Nope, adding that instead!" a + b;
    a = 1;
    b = 2;
  } ./file.nix;

  nix-doc-test = builtins.doc f;

  result = scopedImportTest;

  lib = pkgs.lib.extend (self: super: {
    myFetcher = args: throw "implementation";
  });

  lib' = pkgs.lib // {
    myFetcher = args: throw "implementation";
  };

  moduleSystemTest = lib'.evalModules {
    modules = [
      ({ lib, ... }: {
        options.foo = lib.mkOption {
          default = lib.myFetcher {};
        };
      })
    ];
  };
in result
