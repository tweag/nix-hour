let
  # <thunk, expr: 1 + 1, scope: {}>
  # After using x the first time: <2>
  x = builtins.trace "evaluated" (1 + 1);

  # 0-99
  r = (builtins.genList (i: r)) 100;

  y = 0 + 1;


  # Value: Thunk | Int/String/...

  # r -> Value
  # r = Thunk
  # - r: evalThunk (...) (mark r as a blackhole)
  # - evalFun (genList (i: r)) 100
  # - [ r r r r r r ]
  # - r: ..

  deepListEval = list: builtins.seq (
    builtins.foldl' (acc: el: deepListEval el) null list
  ) null;

  y = 1 + y;

in
y
