# The Nix Hour #14 [updateScripts, nixpkgs-update, nixpkgs-review, nix-env -qa, passthru.tests]

[![The Nix Hour #14 [updateScripts, nixpkgs-update, nixpkgs-review, nix-env -qa, passthru.tests]](https://img.youtube.com/vi/fd11ihDmPNc/0.jpg)](https://www.youtube.com/watch?v=fd11ihDmPNc)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=fd11ihDmPNc&t=0): Intro
* [01:23](https://www.youtube.com/watch?v=fd11ihDmPNc&t=83): Looking at a @r-ryantm nixpkgs-update PR
* [04:38](https://www.youtube.com/watch?v=fd11ihDmPNc&t=278): Looking at nixpkgs-review
* [07:20](https://www.youtube.com/watch?v=fd11ihDmPNc&t=440): Listing packages with nix-env
* [13:22](https://www.youtube.com/watch?v=fd11ihDmPNc&t=802): Listing a nested package set with nix-env using recurseIntoAttrs
* [14:22](https://www.youtube.com/watch?v=fd11ihDmPNc&t=862): Future me: It's because pythonPackages.requests fails to evaluate
* [14:55](https://www.youtube.com/watch?v=fd11ihDmPNc&t=895): Package sets in nixpkgs being built by Hydra
* [16:22](https://www.youtube.com/watch?v=fd11ihDmPNc&t=982): Back to nixpkgs-review
* [18:00](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1080): Why the nixpkgs-review shell has a special case for more than 50 packages
* [20:40](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1240): How buildEnv works around the argument length restriction
* [22:36](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1356): Brief look at nixpkgs-update docs
* [23:20](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1400): Looking at Repology 
* [25:20](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1520): Back to nixpkgs-update docs
* [25:57](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1557): Why nixpkg staging exists
* [28:40](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1720): Mistake: I also stashed away the setup.sh script, these are only paths that are fetched
* [29:00](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1740): Rebuild count labels in nixpkgs
* [31:29](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1889): Back to nixpkgs-update docs
* [31:58](https://www.youtube.com/watch?v=fd11ihDmPNc&t=1918): Looking and running updateScript's
* [36:05](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2165): Functions and tooling to for defining updateScript's
* [39:30](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2370): Recommendation: Don't generate Nix, instead generate JSON and import that from Nix
* [40:34](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2434): nixpkgs-update vs nix-update
* [41:59](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2519): Updating multiple hashes using update scripts? cargoSha256?
* [46:50](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2810): Hacky replacement of hashes in Nix source
* [49:23](https://www.youtube.com/watch?v=fd11ihDmPNc&t=2963): passthru.tests in CI and the documentation
* [52:07](https://www.youtube.com/watch?v=fd11ihDmPNc&t=3127): testers.testVersion and other testers.*
