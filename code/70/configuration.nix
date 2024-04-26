{
  imports =
    [
      ./hardware-configuration.nix
      ./module.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  system.stateVersion = "24.05";
}

