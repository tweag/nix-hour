{
  system ? builtins.currentSystem,
}:
let
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/tarball/344ab0a8e351683da7b84042ca588a5d3d29d833";
    sha256 = "02pjgy86rxi15indh8zs43hd5bd1zzv4qm8qc2pdd9r96qrd13s6";
  };
  pkgs = import nixpkgs {
    overlays = [];
    config = {};
    inherit system;
  };
in pkgs.hello // {
  shell = pkgs.mkShell {
    packages = [ pkgs.curl ];
  };
}
