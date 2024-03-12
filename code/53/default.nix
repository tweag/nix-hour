{ system ? builtins.currentSystem }:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {
    config = { };
    overlays = [ ];
    inherit system;
  };
  inherit (pkgs) lib;
in
lib.makeScope pkgs.newScope (self: {
  vscodium-code = self.callPackage ./vscodium.nix {
    inherit sources;
  };
  inherit sources pkgs;
})
