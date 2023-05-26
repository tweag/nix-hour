let
  pkgs = import ~/src/nixpkgs {};
in
pkgs.writeScriptBin "impure" ''
  ${pkgs.lib.getExe pkgs.nix} --version
''
