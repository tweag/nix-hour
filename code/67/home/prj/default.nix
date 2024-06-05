let
  sources = import ./npins;
in
{
  system ? builtins.currentSystem,
  nixpkgs ? sources.nixpkgs,
}:
let
  pkgs = import nixpkgs {
    inherit system;
    config = {};
    overlays = [];
  };
  build = pkgs.callPackage ./package.nix { };
in
{
  inherit build;

  shell = pkgs.mkShell {
    inputsFrom = [ build ];
    packages = [
      pkgs.npins
      pkgs.rust-analyzer
    ];
  };
}
