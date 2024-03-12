{ vscodium, symlinkJoin, makeWrapper, writeShellScriptBin }:
let
  wrapped = writeShellScriptBin "vscode" ''
    # Call hello with a traditional greeting 
    exec ${vscodium}/bin/vscodium
  '';
in
symlinkJoin {
  name = "vscodium";
  paths = [
    wrapped
    vscodium
  ];
  postBuild = ''
    substitute $out/share/applications/{codium,code}.desktop \
      --replace codium code
  '';
}
