{
  system ? builtins.currentSystem,
}:
let
  nixpkgsOriginal = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/f958e5369ed761df557c362d4de3566084e9eefb.tar.gz";
    sha256 = "00ba9h4hlhs0hszx5lmh0wi07j3vriafv6llhwc6vb99wy81rn14";
  };

  pkgsOriginal = import nixpkgsOriginal {
    config = {};
    overlays = [];
    inherit system;
  };

  nixpkgs = pkgsOriginal.srcOnly {
    name = "nixpkgs-patched";
    src = nixpkgsOriginal;
    patches = [
      ./vbox.patch
    ];
  };

  pkgs = import nixpkgs {
    config = {
      # Use overlays instead!
      #packageOverrides = prev: {};
    };
    overlays = [
      (
        final: prev:
        #prev.lib.mapAttrs (name: builtins.trace name) {
          {
          #virtualbox = prev.virtualbox.overrideAttrs (old: {
          #  virtualboxGuestAdditionsIso = old.virtualboxGuestAdditionsIso.overrideAttrs (old': {
          #    name = "${old'.name}-modified";
          #  });
          #});

          lib = prev.lib.extend (final: prev: { foo = 10; });

          # HACKY (but it works)!
          #virtualbox = prev.virtualbox.override (old: {
          #  callPackage =
          #    f: a:
          #    let
          #      original = old.callPackage f a;
          #      result =
          #        if final.lib.hasPrefix "VBoxGuestAdditions" original.name then
          #          original.overrideAttrs (old': {
          #            name = "${old'.name}-modified";
          #          })
          #        else
          #          original;
          #    in
          #    builtins.trace "Result: ${result}" result;
          #});
        }
      )
    ];
    inherit system;
  };
in
pkgs
