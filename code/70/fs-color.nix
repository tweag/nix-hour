{ config, options, lib, ... }: {
  options._declarations = lib.mkOption {
    type = lib.types.raw;
    default = options.device.declarationPositions;
  };

  options.color = lib.mkOption {
    type = lib.types.str;
    #default = "red";
  };

  config.color =
    if config.device == "/" then
      "red"
    else
      "blue";
}
