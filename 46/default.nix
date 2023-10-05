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
  myPackage = self.callPackage ./my-package.nix { };

  shell = pkgs.mkShell {
    packages = [
      self.myPackage
    ];
  };

  moduleEval = lib.evalModules {
    modules = [ ./module.nix ];
  };

  nixosSystem = import (sources.nixpkgs + "/nixos") {
    configuration = ./configuration.nix;
  };

})
