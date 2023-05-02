let
  sources = import ./nix/sources.nix;
in
{ system ? builtins.currentSystem
, npmlock2nixSource ? sources.npmlock2nix
, nixpkgs ? sources.nixpkgs
}:
let
  pkgs = import nixpkgs {
    config = {};
    overlays = [];
    inherit system;
  };
  inherit (pkgs) lib;
  npmlock2nix = pkgs.callPackage npmlock2nixSource { };

  shell = npmlock2nix.v2.shell {
    src = ./.;
  };

  custom_node_modules = shell.node_modules.overrideAttrs (old: {
    buildPhase = ''
      echo "Build phase successfully changed!"
      exit 1
    '';
  });

  astro-nm = shell.overrideAttrs (final: prev: {
    buildInputs = lib.filter (package:
      # Filter out node_modules derivation, identified by nodejs passthru
      #lib.debug.traceSeqN 2 {
      #  inherit (package) name passthru;
      #  hasNodeJs = package ? nodejs;
      #}
      ! package ? nodejs
    ) prev.buildInputs ++ [
      custom_node_modules
    ];

    shellHook = ''
      # FIXME: we should somehow register a GC root here in case of a symlink?
      ${npmlock2nix.v2.internal.add_node_modules_to_cwd custom_node_modules "symlink"}
    '';

  });
in astro-nm
