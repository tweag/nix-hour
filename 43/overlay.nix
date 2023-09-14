final: prev: {

  python3_unstable = final.pythonInterpreters.python3_unstable;

  # The `pythonInterpreters //` causes the python3_unstable attribute not to
  # be propagated into the result of `pythonInterpreters.override`.
  pythonInterpreters_broken = final.pythonInterpreters.override (prevAttrs: {
    pythonPackagesExtensions = [ ];
  });

  # pythonInterpreters doesn't have its own extensions mechanism, so we need to use //
  # See the above for what this breaks
  pythonInterpreters = prev.pythonInterpreters // {

    python3_unstable =
      let
        pythonBase = final.path + "/pkgs/development/interpreters/python";
        original = final.callPackage (pythonBase + "/cpython") {
          self = final.__splicedPackages.python3_unstable;
          sourceVersion = {
            major = "3";
            minor = "13";
            patch = "0";
            suffix = "unstable";
          };
          hash = throw "This shouldn't be necessary";
          inherit (final.darwin) configd;
          passthruFun = final.callPackage (pythonBase + "/passthrufun.nix") { };
          noldconfigPatch = pythonBase + "/cpython/3.12/no-ldconfig.patch";
        };
      in
      original.overrideAttrs (prevAttrs: {
        src = final.fetchFromGitHub {
          owner = "python";
          repo = "cpython";
          rev = "4a54074a0f5579d417445ec28427cd0ed5aa01f4";
          hash = "sha256-/XHz+3Asp5++WtiTscmnSHX7NViv4C0Qg6mmx7TFoRY=";
        };
      });

    # Might also work
    python3_unstable' =
      final.pythonInterpreters.python312.overrideAttrs (old: {
        # src = ...;
        # ...
      });
  };
}
