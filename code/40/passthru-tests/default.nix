let
  pkgs = import <nixpkgs> {};

  package = pkgs.runCommand "foo" {
    passthru.tests =
      let
        simple = pkgs.runCommand "foo-test" {} ''
          ${package}/bin/foo
          touch $out
        '';

        version = pkgs.testers.testVersion {
          package = package;
          version = "1.2";
        };
      in
      {
        inherit simple version;
        combined = pkgs.linkFarm "combined-tests" [
          { name = "simple"; path = simple; }
          { name = "version"; path = version; }
        ];
      };

    # pkgs.writeShellApplication
    script = ''
      #!${pkgs.runtimeShell}
      echo "1.2"
    '';

    passAsFile = [ "script" ];

  } ''
    mkdir -p "$out/bin"
    cp "$scriptPath" "$out/bin/foo"
    chmod +x "$out/bin/foo"
  '';
in
package

