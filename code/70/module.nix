{ lib, pkgs, config, ... }:
let
  inherit (lib) types;
in
{

  #imports = [
  #  ./wireguard.nix
  #];

  #options.vpn = lib.mkOption {
  #  type = types.submodule ./vpn.nix;
  #};

  # fileSystems."/".device

  #config.virtualisation.vmVariant.environment.systemPackages = [
  #  (throw pkgs.hello)
  #];

  config.networking.hostId = "12345678";

  options.fileSystems = lib.mkOption {
    type = types.attrsOf (types.submodule ./fs-color.nix);
  };

  # Infinite recursion
  #config.fileSystems =
  #  lib.mapAttrs (name: value: 
  #    value // {
  #      fsType =
  #        if value.device == "/" then
  #          "zfs"
  #        else
  #          "auto";
  #    }
  #  ) config.fileSystems;

}
