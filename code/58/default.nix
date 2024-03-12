rec {
  pkgs = import <nixpkgs> { };
  inherit (pkgs) lib;
  python = pkgs.python3;

  myMkDerivation =
    attrs: builtins.derivation (removeAttrs attrs [ "passthru" ]) // (attrs.passthru or { });

  myMkDerivationTest = myMkDerivation {
    name = "test";
    builder = "${pkgs.bash}/bin/bash";
    PATH = lib.makeBinPath [ pkgs.coreutils ];
    args = [
      "-c"
      "touch $out"
    ];
    system = builtins.currentSystem;

    passthru.passthruTest = 10;
  };

  # builtins.derivation (builtins.strictDerivation) doesn't have passthru
  fakePython = pkgs.stdenv.mkDerivation {
    name = "fake-python";

    buildCommand = ''
      echo "Building python, wait 5 seconds.."
      sleep 5
      touch $out
    '';

    passthru.pythonInterpreterName = "python3";
    passthru.withPackages = f: python.buildEnv.override { extraLibs = f python.pkgs; };
  };

  env = python.withPackages (
    ps:
    lib.debug.traceSeq
      {
        type = builtins.typeOf ps;
        count = lib.length (lib.attrNames ps);
      }
      [ ps.requests ]
  );
  extraExtraPackages = env.override (
    prevArgs: { extraLibs = prevArgs.extraLibs ++ [ python.pkgs.pyramid ]; }
  );
}
