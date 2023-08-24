{

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  #inputs.nixpkgs-master.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.nixos-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";


  outputs = inputs@{ nixpkgs, nixos-unstable, ... }: {

    packages.x86_64-linux.nixos-rebuild = nixpkgs.legacyPackages.x86_64-linux.nixos-rebuild;

    nixosConfigurations.zion = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        # This doesn't work!
        #{
        #  _module.args.unstable = nixos-unstable;
        #}
      ];
      specialArgs.inputs = inputs;
    };
  };
}
