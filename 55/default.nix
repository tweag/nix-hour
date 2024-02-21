let
  lib = import ~/src/nixpkgs/main/lib;
in
rec {

  count = 1000;
  
  initialState = lib.genList (i: false) count;

  pass = k: list:
    let
      result = lib.imap (i: state:
        if lib.mod i k == 0 then
          ! state
        else
          state
      ) list;
    in
    builtins.deepSeq result result;

  passExample = lib.length (pass 0 [ true ]);

  generatedList = lib.genList (i: i + 1) (count - 1);

  result =
    #lib.debug.traceSeq generatedList
    lib.foldl'
      (state: k:
        let
          result = pass k state;
        in
        #lib.debug.traceSeqN 10 {
        #  inherit k state;
        #}
        result
      )
      initialState
      generatedList;

  resultIndices =
    lib.pipe result [
      (lib.imap (i: el: if el then i else null))
      (lib.filter (el: ! isNull el))
    ];
}










