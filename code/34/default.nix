let
  nixpkgs = fetchTarball "https://github.com/tweag/nixpkgs/tarball/file-sets";
  pkgs = import nixpkgs { config = {}; overlays = []; };
  lib = pkgs.lib;
  fs = lib.fileset;
in
pkgs.stdenv.mkDerivation {
  name = "test";
  src = fs.toSource {
    root = ./.;
    fileset = fs.traceVal {} (fs.unions [
      ./Makefile
      ./src/main.c
      ./src/main.h
    ]);
    #fileset = fs.unions [
    #  ./Makefile
    #  (fs.fileFilter (file: file.ext == "c" || file.ext == "h") ./src)
    #  #./src/subdir/bar.c
    #];
  };
  buildPhase = ''
    ${pkgs.tree}/bin/tree > tree-result
  '';
  installPhase = ''
    mv tree-result $out
  '';
}
