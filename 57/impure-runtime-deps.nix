{ gpu ? "amd" }:
let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) lib;

  provideGpuPath = drv: pkgs.runCommand "user-installed-${drv.name}" {
    nativeBuildInputs = [
      pkgs.makeWrapper
    ];
  } ''
    mkdir -p $out/{bin,nix-support}

    echo ${lib.escapeShellArg gpu} > $out/nix-support/gpu_path
    
    for binary in ${drv}/bin/*; do
      makeWrapper "$binary" "$out/bin/$(basename "$binary")" \
        --set GPU_PATH $out/nix-support/gpu_path
    done
  '';
in
lib.makeScope pkgs.newScope (final: {

  # 1 hour build time
  foo = pkgs.writeShellApplication {
    name = "foo";
    runtimeInputs = [
      pkgs.cowsay
    ];
    text = ''
      echo "Rendering using $(< "$GPU_PATH")"
    '';
  };

  user-installed-foo = provideGpuPath final.foo;

  # 1 hour build time
  bar = pkgs.writeShellApplication {
    name = "bar";
    runtimeInputs = [
      final.foo
    ];
    text = ''
      foo
    '';
  };

  user-installed-bar = provideGpuPath final.bar;


})
