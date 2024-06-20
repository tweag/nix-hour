let
  lib = (import <nixpkgs> { }).lib;

  mutFirstChar =
    f: s:
    let
      firstChar = f (lib.substring 0 1 s);
      rest = lib.substring 1 (-1) s;

    in
    # matched = builtins.match "(.)(.*)" s;
    # firstChar = f (lib.elemAt matched 0);
    # rest = lib.elemAt matched 1;
    firstChar + rest;

  kebabToCamel =
    s:
    mutFirstChar lib.toLower (
      lib.concatMapStrings (mutFirstChar lib.toUpper) (
        lib.splitString "-" s
      )
    );
in
{
  inherit lib kebabToCamel;
}
