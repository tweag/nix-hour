let
  opensslFlags = [ "enable-ssl2" "enable-ssl3" "enable-ssl3-method" "enable-weak-ssl-ciphers" ];
  # Override openssl to enable SSL3
  opensslOverlay = self: super: {
    weakOpenssl = self.openssl.overrideAttrs (old: {
      configureFlags = opensslFlags ++ old.configureFlags or [];
    });
  };
  # Build python3.11 with overridden openssl
  pythonOverlay = self: super: rec {
    weakPython = self.python311.override (old: {
      openssl_legacy = self.weakOpenssl;
      # I don't yet understand why this is needed but without
      # it the wrong interpreter is used if we call withPackages
      # with this
      self = weakPython;  # why?
    });

  };
  pkgs = import ./. {
    overlays = [
      opensslOverlay
      pythonOverlay
    ];
    config = {};
  };
in pkgs


