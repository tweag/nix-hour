let

  lib = import <nixpkgs/lib>;

in
lib.evalModules {
  modules = [
    ./module.nix
  ];
}
