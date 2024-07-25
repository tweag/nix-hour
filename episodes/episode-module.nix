{
  lib,
  options,
  config,
  episode_dir,
  previous_episode,
  ...
}: {
  options = {
    episode_number = lib.mkOption {
      type = lib.types.str;
    };

    youtube_id = lib.mkOption ({
        type = lib.types.str;
      }
      // lib.optionalAttrs (builtins.pathExists (episode_dir + "/youtube_id")) {
        default = lib.removeSuffix "\n" (builtins.readFile (episode_dir + "/youtube_id"));
      });

    title = lib.mkOption {
      type = lib.types.str;
      default =
        "The Nix Hour #${config.episode_number}"
        + lib.optionalString (config.subtitle != "") " [${config.subtitle}]";
    };

    subtitle = lib.mkOption {
      type = lib.types.str;
      default = "";
    };

    readme_md = lib.mkOption {
      type = lib.types.str;
      default = lib.concatStringsSep "" ([
          ''
            # ${config.title}

          ''
        ]
        ++ (lib.optionals options.youtube_id.isDefined [
          ''
            [![${config.title}](https://img.youtube.com/vi/${config.youtube_id}/0.jpg)](https://www.youtube.com/watch?v=${config.youtube_id})

          ''
        ])
        ++ [config.description]
        ++ lib.optionals options.timestamps_txt.isDefined [
          ''

            ${config.timestamps_md}
          ''
        ]);
    };

    description = lib.mkOption ({
        type = lib.types.str;
      }
      // lib.optionalAttrs previous_episode.options.description.isDefined {
        default = previous_episode.config.description;
      });

    timestamps_txt = lib.mkOption ({
        type = lib.types.str;
      }
      // lib.optionalAttrs (builtins.pathExists (episode_dir + "/timestamps.txt")) {
        default = builtins.readFile (episode_dir + "/timestamps.txt");
      });

    timestamps_md = lib.mkOption {
      type = lib.types.anything;
      default = lib.pipe config.timestamps_txt [
        (lib.removeSuffix "\n")
        (lib.splitString "\n")
        (
          map (
            line: let
              parts = builtins.match "(([0-9]+(:[0-9]+)+)[[:space:]]+)?(.*)" line;
              time_str = builtins.elemAt parts 1;
              comment = builtins.elemAt parts 3;
              time_sec = builtins.foldl' (res: elem: res * 60 + (lib.toIntBase10 elem)) 0 (lib.splitString ":" time_str);
            in
              if time_str == null
              then "  " + line
              else "* [${time_str}](https://www.youtube.com/watch?v=${config.youtube_id}&t=${builtins.toString time_sec}): ${comment}"
          )
        )
        (lib.concatStringsSep "\n")
      ];
    };

    youtube = {
      dir = lib.mkOption {
        type = lib.types.path;
        readOnly = true;
        default = episode_dir;
      };

      id = lib.mkOption {
        type = lib.types.str;
        default =
          if options.youtube_id.isDefined
          then config.youtube_id
          else "";
      };

      title = lib.mkOption {
        type = lib.types.str;
        default = config.title;
      };

      description = lib.mkOption {
        type = lib.types.str;
        default = lib.concatStringsSep "" ([config.description]
          ++ lib.optionals options.timestamps_txt.isDefined [
            ''
              ${config.timestamps_txt}
            ''
          ]);
      };

      scheduled_start_time = lib.mkOption ({
          type = lib.types.int;
        }
        // lib.optionalAttrs previous_episode.options.youtube.scheduled_start_time.isDefined {
          default = previous_episode.config.youtube.scheduled_start_time + (7 * 24 * 60 * 60);
        });

      enable_auto_start = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };

      enable_auto_stop = lib.mkOption {
        type = lib.types.bool;
        default = false;
      };

      enable_dvr = lib.mkOption {
        type = lib.types.bool;
        default = true;
      };
    };
  };
}
