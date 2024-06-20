let
  value = null;
  
  # DONT DO THIS
  #__mul = a: b: a + b;

  matching = {

    string = "Zeichenkette";
    int = "Ganze Zahl";

  }.${builtins.typeOf value}
  or "Unbekannter Typ";

  #ifelse =
  #  if builtins.isString value then
  #    "Faden"
  #  # ...

in
10 * 10

