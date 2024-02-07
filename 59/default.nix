rec {
  lib = import <nixpkgs/lib>;

  digits = lib.genList (i: toString i) 10;

  resultsPart1 =
    lib.mapAttrs
      (
        name: lines:
        tracingPipe "" lines [
          (lib.imap0 processLine)
          (lib.foldl' (sum: number: sum + number) 0)
        ]
      )
      inputLines;

  tracingPipe =
    parentContext: input: funs:
    let
      traceValue =
        context: value:
        let
          string = lib.generators.toPretty { multiline = false; } value;
        in
        builtins.traceVerbose "${parentContext}${context}: ${string}" value;
    in
    lib.foldl' (value: { i, fun }: traceValue "  ${toString i}" (fun value))
      (traceValue "initial" input)
      (lib.imap0 (i: fun: { inherit i fun; }) funs);

  processLine =
    i: line:
    tracingPipe "line ${toString i}: " line [
      lib.stringToCharacters
      (lib.filter (char: lib.elem char digits))
      (map (char: lib.toInt char))
      (numbers: 10 * lib.head numbers + lib.last numbers)
    ];

  numberReplacements = {
    one = 1;
    two = 2;
    three = 3;
    four = 4;
    five = 5;
    six = 6;
    seven = 7;
    eight = 8;
    nine = 9;
  };

  # Type: AttrsOf (ListOf String)
  inputLines = lib.mapAttrs (name: file: lib.splitString "\n" (lib.fileContents file)) {
    test = ./test-input;
    full = ./input;
  };

  numberReplacementsFull =
    numberReplacements
    // lib.mapAttrs' (name: value: lib.nameValuePair (toString value) value) numberReplacements;

  numberReplacementsFullList = lib.mapAttrsToList lib.nameValuePair numberReplacementsFull;

  processLinePart2 =
    line:
    lib.pipe line [
      (builtins.traceVerbose line)
      lib.stringLength
      (lib.genList (i: lib.substring i (-1) line))
      (lib.concatMap (
        suffix:
        # { name, value }
        let
          match =
            lib.findFirst ({ name, value }: lib.strings.hasPrefix name suffix) null
              numberReplacementsFullList;
        in
        lib.optional (match != null) match.value
      ))
      (numbers: 10 * lib.head numbers + lib.last numbers)
    ];

  resultsPart2 =
    lib.mapAttrs (_: lines:
      lib.pipe lines [
        (map processLinePart2)
        (lib.foldl' (sum: number: sum + number) 0)
      ]
    ) inputLines;
}
