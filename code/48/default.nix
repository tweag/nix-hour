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
  nixosSystems = 
    let
      allMachinesModule = { lib, ... }: {
        options.allMachines = lib.mkOption {
          type = lib.types.attrsOf lib.types.raw;
          default = self.nixosSystems;
        };
      };
    in {

      foo = import (sources.nixpkgs + "/nixos") {
        configuration = {
          imports = [
            ./configuration1.nix
            allMachinesModule
          ];
        };
      };

      bar = import (sources.nixpkgs + "/nixos") {
        configuration = { lib, ... }: {
          imports = [
            ./configuration2.nix
            allMachinesModule
          ];

          options.machine1AirsonicPort = lib.mkOption {
            type = self.nixosSystems.foo.options.services.airsonic.port.type;
            default = self.nixosSystems.foo.config.services.airsonic.port;
          };
        };
      };
  };

})
