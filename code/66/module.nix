{ pkgs, config, ... }: {

  #programs.ccache.enable = true;
  #programs.ccache.packageNames = [
  #  "hello"
  #  "mpv-unwrapped"
  #];

  nixpkgs.overlays = [
    (final: prev: {
      #mpv-unwrapped = prev.mpv-unwrapped.overrideAttrs (old: {
      #  src = ./mpv;
      #)};
    })
  ];
  

  #environment.systemPackages = [
  #  (pkgs.hello.overrideAttrs (old: {
  #    src = ./hello;
  #  }))
  #  #pkgs.mpv
  #];

  nix.settings.sandbox-paths = [ "/bin/sh=${pkgs.busybox-sandbox-shell.out}/bin/busybox" ];
  #nix.settings.extra-sandbox-paths = [ config.programs.ccache.cacheDir ];

}
