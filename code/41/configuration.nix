{ inputs, pkgs, ... }: {

  imports = [
    (inputs.nixos-unstable + "/nixos/modules/services/audio/goxlr-utility.nix")
    (inputs.nixos-unstable + "/nixos/modules/services/security/kanidm.nix")
  ];

  disabledModules = [
    # For getting updated modules, the old version needs to be disabled, so there's no conflicts with the updated one
    "services/security/kanidm.nix"
  ];

  nixpkgs.overlays = [
    (final: prev: {
      inherit (inputs.nixos-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}) goxlr-utility;
    })
  ];

  boot.loader.grub.device = "nodev";
  fileSystems."/".device = "/devst";
  system.stateVersion = "23.11";

  # Not yet available in nixos-unstable!
  # https://nixpk.gs/pr-tracker.html?pr=239801
  #services.hddfancontrol.enable = true;

  # From a new module
  services.goxlr-utility.enable = true;

  # From an updated module
  services.kanidm.package = null;
}
