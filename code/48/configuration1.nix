{
  boot.loader.grub.device = "nodev";
  fileSystems."/".device = "/something";
  system.stateVersion = "23.11";

  networking.hostName = "machine-1";

  services.airsonic = {
    enable = true;
    port = 4041;
  };

  nixpkgs.overlays = [(final: prev: {
    airsonic = prev.airsonic.overrideAttrs (finalAttrs: prevAttrs: {
      #version = "10.6.3";
      #src = ...;
    });
  })];
}
