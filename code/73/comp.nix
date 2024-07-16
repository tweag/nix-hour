let
  y = builtins.trace "heavy computation " (1 + 1);
in
x:
x + y
