let
  #x = "str" + "foo";
  n = 0;
  x = "str" + "foo";

  r = map (i:
    "${x}-${toString i}"
  ) (builtins.genList (i: i) n);

  divide = a: b:
    if b == 0 then
      let
        localisation = {
          german = "Teiling durch null!";
          english = "Division by zero!";
        };
      in
      throw localisation.german
    else
      a / b;
in
r
