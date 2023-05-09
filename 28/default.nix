let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) lib;

  packagesWithBinAsNonDefault =
    lib.filterAttrs (name: value:
      let
        result = builtins.tryEval (value ? outputs
        && lib.elem "bin" value.outputs
        && lib.head value.outputs != "bin");
      in result.success && result.value
    ) pkgs;

  traditional = pkgs.runCommand "test" {
    nativeBuildInputs = [
      pkgs.makeWrapper
    ];
  } ''
    cp ${./script.sh} script.sh
    patchShebangs script.sh

    mkdir -p $out/bin
    mv script.sh $out/bin/script.sh

    wrapProgram $out/bin/script.sh \
      --set PATH ${lib.makeBinPath [ pkgs.curl pkgs.jq ]}
  '';
  
  resholveMkDerivation = pkgs.resholve.mkDerivation {
    pname = "resholved-test";
    version = "unstable";

    src = ./.;
    dontBuild = true;

    installPhase = ''
      mkdir -p $out/bin
      cp *.sh $out/bin
    '';

    solutions.default = {
      scripts = [
        "bin/script.sh"
      ];
      interpreter = "${pkgs.bash}/bin/bash";
      inputs = [
        pkgs.curl
        pkgs.jq
      ];
    };

  };
  resholveScriptBin = pkgs.resholve.writeScriptBin "github-id-script" {
    interpreter = "${pkgs.bash}/bin/bash";
    inputs = [
      pkgs.curl
      pkgs.jq
    ];
  } (builtins.readFile ./script.sh);
in
{ user ? "infinisil" }:
pkgs.resholve.mkDerivation {
  pname = "resholved-test";
  version = "unstable";

  src = ./.;
  dontBuild = true;
  postPatch = ''
    substituteInPlace script.sh --subst-var-by user ${lib.escapeShellArg user}
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp *.sh $out/bin
  '';

  solutions.default = {
    scripts = [
      "bin/script.sh"
    ];
    interpreter = "${pkgs.bash}/bin/bash";
    inputs = [
      pkgs.curl
      pkgs.jq
    ];
  };

}
