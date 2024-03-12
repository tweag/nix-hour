let
  pkgs = import <nixpkgs> {};
in
pkgs.runCommand "test" {
  #nativeBuildInputs = [
  #  pkgs.cowsay
  #];

  text = ./text.txt;
} ''
  echo "The cow says: $text" > $out
  echo "Please use /nix/store/lwfw559yl1adchqn33bbaxzxyiniqann-cowsay-3.7.0 to show it" >> $out
''

/*

Any build time dependency that occurs in the build output becomes a runtime dependency

*/
