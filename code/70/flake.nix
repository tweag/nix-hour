{
  description = "A template that shows all standard flake outputs";

  inputs.nixpkgs.url = "nixpkgs";

  outputs = { self, nixpkgs, ... }: {

    # Used with `nixos-rebuild --flake .#<hostname>`
    # nixosConfigurations."<hostname>".config.system.build.toplevel must be a derivation
    nixosConfigurations.example = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };

    result = self.nixosConfigurations.example;
  };
}
