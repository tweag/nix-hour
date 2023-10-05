# Demonstrates how recursive functions can overflow the stack
let
  sum = list:
    let
      recurse = i:
        if i < 0 then
          0
        else
          builtins.elemAt list i + recurse (i - 1);

    in
    recurse (builtins.length list - 1);

  sum' = list:
  builtins.foldl' (acc: el: acc + el) 0 list;

  longList = builtins.genList (i: i) 1000000;
in {
  recursive = sum longList;
  folding = sum' longList;
}
