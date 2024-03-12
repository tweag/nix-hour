{

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/ec72e4f98aebcba83701b32343960b0788948921";

  outputs = { nixpkgs, ... }: {
    packages.x86_64-linux =
      let
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          overlays = [
            (import ./overlay.nix)
          ];
        };
      in
      {
        inherit (pkgs) python3_unstable pythonInterpreters_broken;
      };

  };

}
