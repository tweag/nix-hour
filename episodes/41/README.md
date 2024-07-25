# The Nix Hour #41 [passthru attribute, using services from nixos-unstable]

[![The Nix Hour #41 [passthru attribute, using services from nixos-unstable]](https://img.youtube.com/vi/bJY2O8_ZNiU/0.jpg)](https://www.youtube.com/watch?v=bJY2O8_ZNiU)

Questions can only be asked by voice or chat in the meeting: https://meet.jit.si/nix-hour

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

Files from this session: https://github.com/tweag/nix-hour/tree/master/41


* [00:00](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=0): Intro
* [00:19](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=19): Q: How does passthru work and why
* [01:15](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=75): Simple derivation example
* [02:32](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=152): Adding attributes to derivation attrset with //
* [06:54](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=414): Overriding derivation that uses // instead of passthru
* [09:23](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=563): Aside: how runCommand passes script to builder
* [11:02](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=662): Why use passthru instead of //
* [12:45](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=765): How does passthru work
* [19:10](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=1150): Escaping env var when passing to derivations
* [20:40](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=1240): Q: How to find what attributes that can be set in flakes
  https://nixos.wiki/wiki/Flakes#Output_schema
  https://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake-check.html#evaluation-checks
* [27:15](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=1635): Q: Using services from different versions of NixOS in flake
* [35:02](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2102): Aside: How master differs from unstable
* [38:20](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2300): Back to using service available in nixos-unstable
* [40:34](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2434): Aside: Attribute sets and path interpolation to strings
* [44:20](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2660): Back to importing module from nixos-unstable
* [46:30](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2790): Infinite recursion when using NixOS module arguments
* [47:44](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=2864): Aside: Using nix-instantiate to build NixOS configuration
* [52:03](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=3123): Back to infinite recursion, specialArgs
* [53:41](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=3221): Adding package from unstable to NixOS configuration with nixpkgs.overlays
* [59:16](https://www.youtube.com/watch?v=bJY2O8_ZNiU&t=3556): Outro
