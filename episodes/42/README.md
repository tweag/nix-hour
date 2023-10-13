# The Nix Hour #42 [finalAttrs, NixOS arguments, unfree licenses]

[![The Nix Hour #42 [finalAttrs, NixOS arguments, unfree licenses]](https://img.youtube.com/vi/jb36PfG28W8/0.jpg)](https://www.youtube.com/watch?v=jb36PfG28W8)

Questions can only be asked by voice or chat in the meeting: https://meet.jit.si/nix-hour

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

Files from this session: https://github.com/tweag/nix-hour/tree/master/42


* [00:00](https://www.youtube.com/watch?v=jb36PfG28W8&t=0): Intro, no Nix Hour next week
* [00:45](https://www.youtube.com/watch?v=jb36PfG28W8&t=45): Q: finalAttrs pattern benefits, overrideAttrs and overlays
* [06:36](https://www.youtube.com/watch?v=jb36PfG28W8&t=396): Overriding version and src with overrideAttrs
* [09:46](https://www.youtube.com/watch?v=jb36PfG28W8&t=586): Recursive attribute sets
* [10:34](https://www.youtube.com/watch?v=jb36PfG28W8&t=634): Using fixed point, lib.fix
* [11:52](https://www.youtube.com/watch?v=jb36PfG28W8&t=712): How overlays work
* [13:09](https://www.youtube.com/watch?v=jb36PfG28W8&t=789): Using finalAttrs in derivation
* [15:04](https://www.youtube.com/watch?v=jb36PfG28W8&t=904): Using finalAttrs in overrideAttrs
* [17:46](https://www.youtube.com/watch?v=jb36PfG28W8&t=1066): passthru.tests: nixosTest using finalPackage
* [21:54](https://www.youtube.com/watch?v=jb36PfG28W8&t=1314): finalAttrs examples from nixpkgs
* [23:38](https://www.youtube.com/watch?v=jb36PfG28W8&t=1418): Q: NixOS configuration arguments
* [25:40](https://www.youtube.com/watch?v=jb36PfG28W8&t=1540): Nix module args: lib
* [26:26](https://www.youtube.com/watch?v=jb36PfG28W8&t=1586): Nix module args: config
* [29:04](https://www.youtube.com/watch?v=jb36PfG28W8&t=1744): Nix module args: options
* [32:30](https://www.youtube.com/watch?v=jb36PfG28W8&t=1950): Nix module args: specialArgs
* [38:20](https://www.youtube.com/watch?v=jb36PfG28W8&t=2300): Nix module args: ..., builtins.functionArgs
* [39:26](https://www.youtube.com/watch?v=jb36PfG28W8&t=2366): NixOS specific arguments
* [40:39](https://www.youtube.com/watch?v=jb36PfG28W8&t=2439): NixOS module args: modulesPath
* [42:23](https://www.youtube.com/watch?v=jb36PfG28W8&t=2543): NixOS module args: baseModules, extraModules
* [43:33](https://www.youtube.com/watch?v=jb36PfG28W8&t=2613): NixOS module args: extendModules
* [45:34](https://www.youtube.com/watch?v=jb36PfG28W8&t=2734): NixOS module args: pkgs and utils
* [46:17](https://www.youtube.com/watch?v=jb36PfG28W8&t=2777): NixOS module args: moduleType
* [46:55](https://www.youtube.com/watch?v=jb36PfG28W8&t=2815): Q: Asking users to accept unfree licenses 
* [47:38](https://www.youtube.com/watch?v=jb36PfG28W8&t=2858): requireFile
* [51:07](https://www.youtube.com/watch?v=jb36PfG28W8&t=3067): nix-prefetch-url
* [52:02](https://www.youtube.com/watch?v=jb36PfG28W8&t=3122): inlining a script in error message
* [54:32](https://www.youtube.com/watch?v=jb36PfG28W8&t=3272): impureEnvVars
* [57:27](https://www.youtube.com/watch?v=jb36PfG28W8&t=3447): Q: Language servers for Nix
* [59:15](https://www.youtube.com/watch?v=jb36PfG28W8&t=3555): Outro
