let
  pkgs = import <nixpkgs> {};
  lib = pkgs.lib;

  result = 
    let
      filename = "This isn't a good filename!\nNope";
    in
    pkgs.runCommand "test" {
      passthru.filename = filename;
      passthru.notUsedByDrv = x: x + 1;
      filename = filename;
    } ''
      mkdir -p $out
      echo foo > $out/"$filename"
    '' /*// {
      filename = filename;
    }*/;

  result' = result.overrideAttrs (prev: {
    outputs = [ "out" "custom" ];
    buildCommand = prev.buildCommand + ''
      touch $custom
    '';
  });

  use = pkgs.runCommand "use" {} ''
    cat ${result'}/${lib.escapeShellArg result'.filename}
    touch $out
  '';
in
result
