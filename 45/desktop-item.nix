let
  pkgs = import ./. {
    config = {};
    overlays = [];
  };



in
pkgs.makeDesktopItem {
  name = "hello";
  exec = "${pkgs.kitty}/bin/kitty --command ${pkgs.hello}/bin/hello";
  desktopName = "hello program";
}
