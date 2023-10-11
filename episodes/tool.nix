{
  lib,
  buildGoModule,
}:
buildGoModule rec {
  pname = "tool";
  version = "0.0.1";
  src = builtins.path {
    path = ./.;
    name = "tool";
    filter = path: type:
      lib.any (lib.flip lib.hasSuffix path) ["go.mod" "go.sum" ".go"];
  };
  vendorHash = "sha256-L4ncekMxY+c8V65j8Cun9XbZJqwYGyjAam+4Ho4+niA=";
  subPackages = ["."];
  doCheck = false;
}
