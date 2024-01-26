# The Nix Hour #5 [overriding a rust source, derivation internally, closure inspection]

[![The Nix Hour #5 [overriding a rust source, derivation internally, closure inspection]](https://img.youtube.com/vi/gqrdaB9nITk/0.jpg)](https://www.youtube.com/watch?v=gqrdaB9nITk)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and is recorded and uploaded to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we looked at these topics:

* [00:00](https://www.youtube.com/watch?v=gqrdaB9nITk&t=0): Overriding the source of a Rust package in an overlay
* [05:50](https://www.youtube.com/watch?v=gqrdaB9nITk&t=350): Impure overlay locations
* [06:49](https://www.youtube.com/watch?v=gqrdaB9nITk&t=409): Not providing a hash to different fetchers
* [11:53](https://www.youtube.com/watch?v=gqrdaB9nITk&t=713): Providing the overlay on the CLI instead of impurely
* [13:44](https://www.youtube.com/watch?v=gqrdaB9nITk&t=824): Discussion about derivation names
* [15:02](https://www.youtube.com/watch?v=gqrdaB9nITk&t=902): Looking how buildRustPackage is implemented and figuring out how to override the dependency hash
* [19:30](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1170): Actually overriding the dependency hash
* [21:18](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1278): Discussion on whether the name matters for fixed-output derivation caching
* [23:02](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1382): Looking at the Nix store database directly with sqlite
* [23:59](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1439): Checking discourse for how to override rust packages dependency hashes
* [25:05](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1505): Why outputHash?
* [28:34](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1714): Asking for questionsA
* [30:15](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1815): Inspecting derivation attributes
* [33:16](https://www.youtube.com/watch?v=gqrdaB9nITk&t=1996): The derivation primitive
* [36:37](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2197): The derivationStrict primitive underneath the derivation primitive
* [38:18](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2298): Nix repl requirements for a derivation
* [39:52](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2392): Why derivation attributes aren't needed to build derivations
* [44:10](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2650): Derivation inputs
* [45:20](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2720): Inspecting build-time dependencies of derivations
* [47:07](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2827): Finding the derivation for a store path using nix-store --query --deriver
* [49:20](https://www.youtube.com/watch?v=gqrdaB9nITk&t=2960): Subpar explanation of some GC related nix.conf options
* [52:12](https://www.youtube.com/watch?v=gqrdaB9nITk&t=3132): Manually replicating Nix's grepping for runtime dependencies
* [55:38](https://www.youtube.com/watch?v=gqrdaB9nITk&t=3338): Looking at references schema in the Nix database
* [56:02](https://www.youtube.com/watch?v=gqrdaB9nITk&t=3362): Looking at the GC related options again and some recommendations
