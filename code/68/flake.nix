{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";

  outputs = { nixpkgs, ... }: {
    result = nixpkgs.lib.evalModules {
      modules = [
        ./module.nix
      ];
    };
  };
}
