# The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins]

[![The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins]](https://img.youtube.com/vi/-ohLh-QHc_A/0.jpg)](https://www.youtube.com/watch?v=-ohLh-QHc_A)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Files from this session: https://github.com/tweag/nix-hour/tree/master/32
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=0): Intro
* [00:47](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=47): Q: How to extend nixpkgs.lib or builtins
* [01:28](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=88): Simple example, adding new fetcher to nixpkgs lib
* [02:26](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=146): lib.extend: overlay system for lib
* [03:14](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=194): Aside: evaluating function with all default args from cli
* [03:54](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=234): Why we can't use //, injecting new lib into NixOS module
* [06:49](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=409): Extending builtins by redefining the name builtins
* [08:32](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=512): builtins.scopedImport
* [10:38](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=638): Dangers and usecases of scopedImport
* [13:33](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=813): Adding builtins using Nix plugins
* [16:25](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=985): Adding custom fetcher with nixpkgs overlays, pkgs.extend, pkgs.appendOverlays
* [17:58](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1078): When use self and super or final and prev in overlays
* [19:34](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1174): Self-refferential packages using makeOverridable
* [22:16](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1336): Recursion using overrides
* [24:53](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1493): Overriding self-refferential derivation, why use super only on top level of the overlay
* [27:43](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1663): Looking for Nix plugins
* [29:53](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1793): Trying Nix plugin from nix-doc project
* [32:54](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=1974): Overriding nix as a dependency for a plugin
* [37:20](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=2240): aside: Evaluating NixOS config
* [40:50](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=2450): Debugging dependency override
* [49:27](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=2967): Using user's nix.conf
* [53:20](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=3200): Exposing a value from inside NixOS module system
* [56:10](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=3370): Testing final nix-doc configuration
* [58:55](https://www.youtube.com/watch?v=-ohLh-QHc_A&t=3535): Out of time
