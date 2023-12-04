[
  (final: prev: {
    # Disable the prompt for new users without a ~/.zshrc
    zsh = prev.zsh.overrideAttrs (prevAttrs: {
      postInstall = prevAttrs.postInstall or "" + ''
        rm $out/lib/zsh/*/zsh/newuser.so
      '';
    });

    # A script to switch to a new system within the VM
    vm-switch = final.writeShellScriptBin "vm-switch" ''
      set -xe
      nix-build -o system /etc/nixos -A vm.system "$@"
      exec sudo system/bin/switch-to-configuration test
    '';
  })
]
