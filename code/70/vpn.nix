{ lib, ... }: {

  imports = [ 

  options.impl = lib.mkOption {
    type = lib.types.enum [];
  };
  options.server = lib.mkOption {
    type = lib.types.str;
  };
  options.clients = lib.mkOption {
    type = lib.types.listOf lib.types.str;
  };
}
