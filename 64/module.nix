{

  

  # Automatically 0 with auto-allocate-uids
  #nix.nrBuildUsers = 2;

  nix.settings.auto-allocate-uids = true;
  nix.settings.experimental-features = [
    "auto-allocate-uids"
    "ca-derivations"
    "nix-command"
    #"configurable-impure-env"
  ];

  #nix.envVars.foo = "bar";

  #nix.settings.impure-env = [ "foo=baz" ];


}
