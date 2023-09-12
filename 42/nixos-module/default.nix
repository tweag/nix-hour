let
  pkgs = import <nixpkgs> {};
in
pkgs.lib.evalModules {
  modules = [
    ./module.nix
  ];
  specialArgs.baz = ./other-module.nix;
}
