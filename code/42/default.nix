let
  pkgs = import (fetchTarball "channel:nixpkgs-unstable") {};
  
  foo = pkgs.stdenv.mkDerivation (finalAttrs: {
    pname = "custom-hello";
    version = "2.12.1";

    src = pkgs.fetchurl {
      url = "mirror://gnu/hello/hello-${finalAttrs.version}.tar.gz";
      sha256 = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
    };

    passthru.tests.nixosTest = pkgs.testers.nixosTest {
      name = "hello-test";
      nodes = {
        machine = { lib, pkgs, nodes, ... }: {
          environment.systemPackages = [
            finalAttrs.finalPackage
          ];
        };
      };
      testScript = ''
        start_all()
        machine.succeed("hello")
      '';
    };
  });
in
foo.overrideAttrs (finalAttrs: prevAttrs: {
  #postInstall = prevAttrs.postInstall + ''
  #  echo bar > $out/bar
  #'';

  #version = "2.12";

  #src = pkgs.fetchurl {
  #  url = "mirror://gnu/hello/hello-${finalAttrs.version}.tar.gz";
  #  sha256 = "sha256-zwSvhtwIUmjF9EcPuuSbGK+8Iht4CWqrhC2TSna60Ks=";
  #};

})
