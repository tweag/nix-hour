# The Nix Hour #31 [participating in Zero Hydra Failures (ZHF)]

[![The Nix Hour #31 [participating in Zero Hydra Failures (ZHF)]](https://img.youtube.com/vi/kTzEslx3Kg0/0.jpg)](https://www.youtube.com/watch?v=kTzEslx3Kg0)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
PR created during this session: https://github.com/nixos/nixpkgs/pull/235040
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=0): Intro, why was nodejs v16 deprecated ahead of EOL
* [01:26](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=86): NixOS release schedule
* [03:03](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=183): How meta.knownVulnerabilities is handled in nixpkgs
* [05:13](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=313): config.nix impurity in nixpkgs with and without flakes
* [09:29](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=569): Last days of ZHF 23.05
* [09:57](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=597): Hydra projects and jobsets
* [11:49](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=709): What happens with failures after ZHF ends
* [12:48](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=768): Looking at random broken package (clickhouse)
* [15:28](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=928): Simpler package (cameradar)
* [16:56](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1016): Using `nix edit` to find package source
* [17:56](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1076): How packages are marked as broken after ZHF
* [18:37](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1117): Details about ZHF
* [19:29](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1169): https://malob.github.io/nix-review-tools-reports
* [22:15](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1335): https://zh.fail
* [23:17](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1397): A script to build all packages that you maintain
* [24:19](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1459): Confirming breakage on master
* [25:17](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1517): Checking if someone else posted a PR with a fix
* [26:56](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1616): Discovering changes that affect package on Hydra
* [28:14](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1694): We'll not cover git bisect here
* [28:32](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1712): Getting into build directory
* [30:42](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1842): Looking at the broken dependency
* [31:29](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=1889): Looking at the source of the package itself
* [35:14](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2114): Dowgrading dependency if older one exists in nixpkgs
* [36:40](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2200): Getting old version of dependency outside nixpkgs
* [38:52](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2332): Finding nixpkgs commit containing old version of curl on Hydra
* [40:12](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2412): Fetching old version of nixpkgs, using package from it
* [42:19](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2539): Checking how long does it take to build a package on Hydra
* [42:41](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2561): Testing the package, looking at what it supposed to do
* [43:56](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2636): Marking the package as broken with comment
* [45:19](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=2719): Creating a PR to nixpkgs
* [51:42](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=3102): Q: Why doesn't fetching old nixpkgs work for upstream?
* [53:16](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=3196): Q: Can we make old curl available in nixpkgs?
* [56:55](https://www.youtube.com/watch?v=kTzEslx3Kg0&t=3415): Out of time
