{ system ? builtins.currentSystem
, nixpkgs ? import <nixpkgs> {
    inherit system;
    overlays = [ ];
    config = [ ];
  }
}:
nixpkgs.hello
