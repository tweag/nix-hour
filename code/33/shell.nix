let
  # fetchTarball
  # https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
  # https://nix.dev/reference/pinning-nixpkgs
  pkgs = import <nixpkgs> {
    overlays = [];
    config = {};
  };

  # pkgs = nixpkgs.legacyPackages.${system};
  # shell.nix-equivalent for flakes is `devShells`

in
# pkgs.writers.python*
# pkgs.python3.pkgs.buildPythonPackage
pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (ps: [
      ps.gdal
    ]))
  ];
}
