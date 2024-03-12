{ runCommand, pkgs, stdenv, hello, newScope, lib }: lib.makeScope newScope (self: {

  checkpointArtifacts =
    (pkgs.checkpointBuildTools.prepareCheckpointBuild pkgs.hello);

  changedHello = pkgs.hello.overrideAttrs (old: {
    src = ~/src/hello;
  });

  helloCheckpointed = pkgs.checkpointBuildTools.mkCheckpointBuild self.changedHello self.checkpointArtifacts;
  
  helloConfigure = stdenv.mkDerivation {
    name = "hello-configure";

    src = hello.src;

    postConfigure = ''
      mkdir $out
      cp -r . $out/src
      pwd > $out/build-dir
      declare -px > $out/environ
      exit 0
    '';
  };

  hello = stdenv.mkDerivation {
    name = "my-hello";

    src = self.helloConfigure;

    postPatch = ''
      sed -i "s#$(<build-dir)#$PWD#g" $(find . -type f)
      sed -i "s#${self.helloConfigure}#$out#g" $(find . -type f)
      source environ
      rm environ build-dir
      mv src not-used
      mv not-used/* .
      rmdir not-used
    '';

    dontConfigure = true;

    # Not working!

  };

  a = runCommand "a" { } ''
    sleep 3
    echo "$(( 1 + 2 ))" > $out
  '';

  # /nix/store/[a-z0-9]-<name>

  b = runCommand "b" { } ''
    sleep 3
    a=$(<${lib.escapeShellArg self.a})
    echo "$(( a * 2 ))" > $out
  '';
})
