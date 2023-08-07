let
  f = i: builtins.trace "Integer ${toString i}" i;
  x = f 0;
in {
  a = x;
  b = x;
}
