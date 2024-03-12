i:
let
  lib = import <nixpkgs/lib>;
  exp = builtins.foldl' (acc: i: acc + "-" + toString i) "" (lib.range 0 i);
in
builtins.trace "evaluated ${toString i}" exp
