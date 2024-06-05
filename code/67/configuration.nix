{ pkgs, lib, sources, config, ... }:

{
  imports = [
    # Some values in ./personal.nix need to be changed!
    ./personal.nix
    ./module.nix
  ];

  # Declarative users
  users.mutableUsers = false;

  users.users = {
    # Configure a normal default user
    me.isNormalUser = true;
    # No password
    me.hashedPassword = "";
  };

  # Add the default user to the wheel group, and make wheel more privileged
  users.users.me.extraGroups = [ "wheel" ];
  security.sudo.wheelNeedsPassword = false;
  nix.settings.trusted-users = [ "root" "@wheel" ];

  # Let's not touch channels
  environment.extraSetup = ''
    rm --force $out/bin/nix-channel
  '';

  # Put nixpkgs into /etc/nixpkgs for convenience
  environment.etc.nixpkgs.source = sources.nixpkgs;

  # Set Nixpkgs overlays and config
  nixpkgs = {
    overlays = import ./nixpkgs/overlays.nix;
    config = import ./nixpkgs/config.nix;
  };
  # Make all nix commands on the system use the same Nixpkgs
  nix.nixPath = [
    "nixpkgs=/etc/nixpkgs"
    "nixpkgs-overlays=/etc/nixos/nixpkgs/overlays.nix"
  ];
  environment.variables.NIXPKGS_CONFIG = lib.mkForce "/etc/nixos/nixpkgs/config.nix";

  # Avoid the stateVersion warning.
  # Setting this to system.nixos.release is fine because we have no state
  system.stateVersion = config.system.nixos.release;

  # Auto-login the default user on consoles
  services.getty.autologinUser = "me";

  # Use the same keyboard layout in consoles as in the desktop
  console.useXkbConfig = true;

  # Set up zsh
  programs.zsh = {
    enable = true;

    # Put everything we want to persist into /etc/nixos
    # The history is interesting to keep around for searchability
    histFile = "/etc/nixos/history";

    # Unset the default zsh options, in particular:
    # - No SHARE_HISTORY, because it makes the history file less readable
    # - No HIST_IGNORE_DUPS, so that the history file shows all commands
    # - Yes INC_APPEND_HISTORY, such that even when the VM is quit unexpectedly, we have the history
    setOptions = [ "INC_APPEND_HISTORY" ];
  };

  programs.direnv.enable = true;

  # Prevent the new user dialog in zsh
  system.userActivationScripts.zshrc = "touch .zshrc";

  # Set zsh as the default shell
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";

  # Set up some programs
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    configure = {
      customRC = ''
        set shiftwidth=2
        set tabstop=2
        set expandtab
      '';
    };
  };

  programs.git.enable = true;

  environment.systemPackages = with pkgs; [
    firefox
    vm-switch
    ripgrep
  ];

  # xserver, but actually really wayland
  services.xserver = {
    enable = true;
    displayManager = {
      gdm = {
        enable = true;
        autoSuspend = false;
      };
      autoLogin = {
        enable = true;
        user = "me";
      };
    };

    desktopManager.gnome = {
      enable = true;
      # Set firefox and console as the apps in the dock
      favoriteAppsOverride = ''
        [org.gnome.shell]
        favorite-apps=[ 'firefox.desktop', 'org.gnome.Console.desktop' ]
      '';
    };
  };

  # Set some dconf options declaratively
  programs.dconf = {
    enable = true;
    profiles.user.databases = [ {
      settings = with lib.gvariant; {
        # Don't show a welcome dialog
        "org/gnome/shell" = {
          welcome-dialog-last-shown-version = "9999999999";
        };

        # No timeouts
        "org/gnome/desktop/session" = {
          idle-delay = mkUint32 0;
        };
        "org/gnome/settings-daemon/plugins/power" = {
          sleep-inactive-ac-type = "nothing";
          sleep-inactive-battery-type = "nothing";
        };

        # Faster key repeat
        "org/gnome/desktop/peripherals/keyboard" = {
          delay = mkUint32 200;
          repeat-interval = mkUint32 25;
        };

        # Bigger default console font size
        "org/gnome/Console" = {
          font-scale = 2.0;
        };
      };
    } ];
  };

  virtualisation.vmVariant.virtualisation = {
    # Make the screen size auto-scale
    qemu.options = [ "-vga virtio" ];

    # Don't persist any state, also allows Ctrl-C without problems
    diskImage = null; # "./nixos.qcow2";

    # Except the current directory, which is shared in /etc/nixos
    sharedDirectories.share = {
      source = toString ./.;
      target = "/etc/nixos";
    };
    sharedDirectories.home = {
      source = toString ./home;
      target = "/home/me";
    };

    # Allows Nix commands to re-use and write to the host's store
    mountHostNixStore = true;
    writableStoreUseTmpfs = false;
  };
}
