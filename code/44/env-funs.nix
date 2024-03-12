{ stdenv, runCommand }:
stdenv.mkDerivation {
  name = "env-funs";

  prePhases = "defineFunctions";

  defineFunctions = ''
    greentext() {
      echo -e "\033[0;32m$*\033[0m"
    }
  '';

  unpackPhase = ":";

  installPhase = ''
    greentext foo
    touch $out
  '';
  #postInstall = ''
  #  touch $out
  #'';

  #foo = "foo";
  #bar = ''
  #  echo "$foo"
  #'';
}
