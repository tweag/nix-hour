let
  pkgs = import <nixpkgs> {};
in
pkgs.runCommand "foo" {
  
  foo = [
    "foo"
    "bar baz"
  ];
  bar = pkgs.lib.escapeShellArgs [
    "foo"
    "bar baz'\"\n"
  ];

} ''
  declare -p foo

  eval "barList=($bar)"

  declare -p barList
''
