let
  pkgs = import <nixpkgs> {};

  # ifd
  greet = name: pkgs.runCommand "text" {
    time = builtins.currentTime;
  } ''
    echo -n "Hello, ${name}!" > $out
    sleep 1
  '';

  greetings = {
    a = greet "Silvan";
    b = greet "Paul";
    c = greet "Jake";
  };

in
{
  sequentialBuilds = pkgs.runCommand "result" {} ''
    mkdir -p $out
    ${pkgs.lib.concatStringsSep "\n" (pkgs.lib.mapAttrsToList (name: value: ''
      echo ${pkgs.lib.escapeShellArg (builtins.readFile value)} > $out/${name}
    '') greetings)}
  '';

  dynamicBuilds = pkgs.runCommand "result" {
    outputs = [ "out.drv" ];
  } ''
    nix-instantiate '<nixpkgs>' -A hello > $out
  '';

  parallelBuilds = pkgs.linkFarm "result" (
    pkgs.lib.mapAttrsToList (name: value: {
      name = name;
      path = value;
    }) greetings
  );
}
