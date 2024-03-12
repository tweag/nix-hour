{

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        # nix build
        packages.default = pkgs.hello;
        # nix develop
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.curl
          ];
        };
        # nixos-rebuild, `/etc/nixos/flake.nix`
      }) // {
        nixosConfigurations = {

        };
      };
}
