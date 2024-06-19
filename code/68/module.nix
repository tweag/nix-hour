{ lib, config, ... }:
let
  inherit (lib) types;
in
{
  options.svnRef = lib.mkOption {
    type = types.attrTag {
      branch = lib.mkOption {
        type = types.submodule {
          options.owner = lib.mkOption {
            type = types.str;
          };
          options.name = lib.mkOption { type = types.str; };
        };
      };
      revision = lib.mkOption { type = types.int; };
      location = lib.mkOption { type = types.str; };
    };
  };

  options.src = lib.mkOption { type = types.str; };

  config = {
    svnRef = {
      #branch = {
      #  name = "main";
      #  owner = "infinisil";
      #};
      #revision = 10;
      location = "Berlin";
    };

    src =
      let
        matchAttrTag =
          context: value: handlers:
          let
            tag = lib.head (lib.attrNames config.svnRef);
            handler =
              handlers.${tag}
                or (throw "${context}: Cannot handle source tag ${tag}");
          in
          handler value.${tag};
      in
      matchAttrTag "option svnRef" config.svnRef {
        branch =
          { name, owner }:
          "Source is branch ${name} by ${owner}";
        revision =
          rev: "Source is revision ${toString rev}";
        location = loc: "Source is from ${loc}";
      };
  };
}
