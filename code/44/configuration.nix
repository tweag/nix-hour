{ lib, ... }: {
  boot.loader.grub.device = "nodev";
  fileSystems."/".device = "/devst";
  system.stateVersion = "23.11";


  environment.etc.foo.source = toString ~/nix-hour/44;
}
