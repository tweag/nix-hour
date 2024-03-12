{
  system ? builtins.currentSystem,
  sources ? import ./npins,
}:
let
  pkgs = import sources.nixpkgs {
    config = {};
    overlays = [];
    inherit system;
  };
  inherit (pkgs) lib;
in
lib.makeScope pkgs.newScope (final: {

  impureEnv = pkgs.callPackage ./impure-env.nix { };

  myPackage = pkgs.callPackages ./my-package.nix { };

  caDerivations = pkgs.callPackages ./ca-derivations.nix { };

  nixosSystem = import (sources.nixpkgs + "/nixos/lib/eval-config.nix") {
    system = "x86_64-linux";
    modules = [
      ./configuration.nix
    ];
    specialArgs = {
      inherit sources;
    };
  };

  inherit pkgs;

  vm =
    let
      build = final.nixosSystem.config.virtualisation.vmVariant.system.build;
    in
    {
      # A script to run the VM
      run = build.vm;
      # The VM's system itself, used by vm-switch
      system = build.toplevel;
    };

  shell = pkgs.mkShell {
    packages = [
      pkgs.npins
    ];
  };
})
