{ lib, config, options, ... }:
let
  ipRegex = lib.fileContents ./ip.regex;

  ipv4Type' =
    lib.types.addCheck lib.types.str
      (s: builtins.match ipRegex s != null)
    // {
      description = "ipv4 address";
    };

  ipv4Type =
    lib.types.strMatching ipRegex // {
      description = "ipv4 address";
    };
in
{
  options.foo = lib.mkOption {
    # Types both check and merge
    type = ipv4Type;
  };

  config.foo = "foo";

  options.ip = lib.mkOption {
    type = lib.types.str;
    apply = s:
      if builtins.match ipRegex s != null then
        s
      else
        throw ''
          The string ${lib.strings.escapeNixString s} of the option `ip` is not a valid ipv4 address.
          If you meant to assign the listener something do that instead
          Definition values:${lib.options.showDefs options.ip.definitionsWithLocations}
        '';
  }; 

  config.ip = "This \"is\" a string!";



  options.bar = lib.mkOption {
    # Types both check and merge
    type = lib.types.lines;
    apply = value: "The lines are: ${value}";
  };
  config.bar = "foo";

}
