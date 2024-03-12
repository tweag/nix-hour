let
  pkgs = import <nixpkgs> {};
  lib = pkgs.lib;
in
pkgs.writeShellApplication {
  name = "test";
  runtimeInputs = [
    pkgs.cowsay
  ];
  text = ''
    cowsay Moo
  '';
}
