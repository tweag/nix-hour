- `nix-shell`: Traditional, stable CLI
- `nix shell -f <file>`: Experimental CLI, without Flakes
- `nix shell <flake reference>`: Experimental CLI, with Flakes

- `nix-build`: Traditional, stable CLI
- `nix build -f <file>`: Experimental CLI, without Flakes
- `nix build <flake reference>`: Experimental CLI, with Flakes


Default flake reference: .



Target: Run hello

nix-shell and `mkShell { packages = [ hello ]; }`, run `hello`
nix develop and `mkShell { packages = [ hello ]; }`, run `hello`
nix shell nixpkgs#hello, run `hello`
nix run nixpkgs#hello
