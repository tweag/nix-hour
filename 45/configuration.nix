{ lib, config, pkgs, ... }: {

  config = {
    boot.loader.grub.device = "nodev";
    fileSystems."/".device = "/devst";
    system.stateVersion = "23.11";

    virtualisation.virtualbox.guest.enable = true;

    boot.kernelPackages = pkgs.linuxKernel.packages.linux_6_5;

    assertions = [
      {
        assertion = lib.hasPrefix "6.5" config.boot.kernelPackages.kernel.version;
        message = "Not using expected kernel";
      }
    ];

    nixpkgs.overlays = [(
      final: prev: {
        linuxKernel = prev.linuxKernel // {
          packages = prev.linuxKernel.packages // {
            linux_6_5 = prev.linuxKernel.packages.linux_6_5 // {
              virtualboxGuestAdditions = prev.linuxKernel.packages.linux_6_5.virtualboxGuestAdditions.overrideAttrs (old: {
                patches = (old.patches or []) ++  [./virtualbox.patch];
              });
            };
          };
        };
       }
   )];
  };
}
