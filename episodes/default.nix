{
  nixpkgs ? builtins.getFlake "nixpkgs",
  system ? builtins.currentSystem,
  pkgs ? nixpkgs.legacyPackages.${system},
  lib ? nixpkgs.lib,
}: let
  episodes = lib.pipe ./. [
    builtins.readDir
    # filter directories
    (elems: builtins.filter (name: elems.${name} == "directory") (builtins.attrNames elems))
    # parse all ints in names and sort by them
    (builtins.sort (l: r: (lib.toIntBase10 l) < (lib.toIntBase10 r)))
    # collect episode.nix and apply them in order
    (builtins.foldl' (
        acc: episode_number: let
          episode_dir = ./. + "/${episode_number}";
          episode = lib.evalModules {
            modules =
              [
                {
                  inherit episode_number;
                }
                ./episode-module.nix
              ]
              ++ lib.optionals (builtins.pathExists (episode_dir + "/episode.nix")) [
                (episode_dir + "/episode.nix")
              ];
            specialArgs = {
              inherit episode_dir;
              previous_episode = acc.prev;
            };
          };
        in {
          prev = episode;
          res = acc.res ++ [(lib.nameValuePair "_${episode_number}" episode.config)];
        }
      ) {
        prev = {
          options.youtube.scheduled_start_time.isDefined = false;
        };
        res = [];
      })
    (x: builtins.listToAttrs x.res)
  ];
in {
  inherit episodes;
  tool = pkgs.callPackage ./tool.nix {};
  _tool_episodes = lib.mapAttrs (_:
    lib.getAttrs [
      "youtube_id"
      "title"
      "youtube_description"
      "date"
    ])
  episodes;
}
