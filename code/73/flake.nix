let
  pkgs = import <nixpkgs> {};
  result = pkgs.lib.nixosSystem {
    configuration = {};
    activationScripts.hostname = ''
      hostname=$(curl 192...)
      hostname "$hostname"
    '';
  };
in {
  foo = result;
  bar = result;
}
