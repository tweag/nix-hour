# Stateless NixOS VM demo template

This is a template for a stateless NixOS VM for demonstration purposes.
This is related to [sanix](https://github.com/infinisil/sanix).

## Setup

Before running this yourself, you might want to read through [`personal.nix`](./personal.nix) and adjust the values to your liking.

## Usage and features

Build and run the VM:
```
nix-build -A vm.run
result/bin/run-nixos-vm
```

Comes with:
- Standard gnome desktop configuration
- Automatic login, no passwords required
- No `nix-channel`, but `<nixpkgs>` pinned using [`npins`](https://github.com/andir/npins), also available at `/etc/nixpkgs`
- The current directory is shared at `/etc/nixos` in the VM
- The `/nix/store` is shared with the VM
- No persistent disk otherwise, all changes are discarded when the VM is stopped
- System-wide Nixpkgs overlays in [`nixpkgs/overlays.nix`](./nixpkgs/overlays.nix) and config in [`nixpkgs/config.nix`](./nixpkgs/config.nix)
- Shell history continuously written to [`history`](./history) for persistence across restarts and as searchable reference material
- Neovim (with `vim` alias) as default editor, git and firefox installed
- Auto-adjusting screen size

After making changes to any files, changes can be applied within the VM without restarting it using

```
vm-switch
```

The pinned Nixpkgs can be updated using
```
npins update nixpkgs
```
