# The Nix Hour #22 [nixos-rebuild, switch-to-configuration, activationScripts]

[![The Nix Hour #22 [nixos-rebuild, switch-to-configuration, activationScripts]](https://img.youtube.com/vi/aQJE4ZxD3cc/0.jpg)](https://www.youtube.com/watch?v=aQJE4ZxD3cc)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=0): Intro, issues overview
* [01:49](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=109): Looking at nixos-rebuild
* [02:59](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=179): Building with (nixpkgs/nixos)
* [06:24](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=384): Passing NixOS configuration via NIX_PATH/-I
* [08:11](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=491): Using nixos directory from NIX_PATH
* [09:21](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=561): Specifying channel on command line
* [10:05](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=605): Using "nixos" attribute of nixpkgs to build system
* [12:43](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=763): What is "system" attribute
* [14:53](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=893): Fixing minimal configuration.nix
* [15:41](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=941): What is stateVersion
* [19:13](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1153): How flake is built in nixos-rebuild
* [20:28](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1228): Building and deploying on other hosts using nixos-rebuild
* [21:37](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1297): Switching system profile
* [24:30](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1470): Switching the system to new configuration
* [26:12](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1572): "switch-to-configuration" script
* [30:07](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1807): "activate" script
* [32:16](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=1936): Atomically changing /etc directory
* [34:28](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=2068): Adding custom activation scripts
* [39:30](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=2370): When is "/run/current-system" symlink set
* [44:12](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=2652): Custom activation scripts ordering
* [45:31](https://www.youtube.com/watch?v=aQJE4ZxD3cc&t=2731): Signoff
