{ sources, pkgs, ... }: {

  programs.command-not-found = {
    # Official, but only provides lookup for binaries
    enable = false;
    # This only works for Nixpkgs fetched from channels.nixos.org
    dbPath = sources.nixpkgs + "/programs.sqlite";
    # This would also work, though it then doesn't match your own Nixpkgs version anymore
    #dbPath = fetchTarball "channel:nixpkgs-unstable" + "/programs.sqlite";
  };

  imports = [
    (sources.nix-index-database + "/nixos-module.nix")
  ];

  # Needed for the nix-index-database nixos module
  _module.args.databases = import (sources.nix-index-database + "/packages.nix");

  # Enabled by default by the nix-index-database NixOS module
  # programs.nix-index.enable = true;

  # Also enable comma
  programs.nix-index-database.comma.enable = true;

  # Could be commented out to run binaries automatically,
  # works with both programs.sqlite and nix-index
  # A bit dangerous though, comma is a safer alternative
  #environment.variables.NIX_AUTO_RUN = "1";
}
