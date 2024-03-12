{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> {
    config = {};
    overlays = [];
    inherit system;
  };
  hello = pkgs.hello;
  man-test = pkgs.callPackage ./man-test.nix {};
  env-funs = pkgs.callPackage ./env-funs.nix {};
in
{
  inherit hello man-test env-funs;
  shell = pkgs.mkShellNoCC {
    # Same as nativeBuildInputs
    packages = [
      hello
      man-test
    ];
  };




}
