# File -> Value
let
  x = import ./value.nix 30000;
in
{
  a = x;
  b = x;
}
