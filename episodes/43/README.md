# Nix Hour #43 [adding trunk version of CPython to nixpkgs]

[![Nix Hour #43 [adding trunk version of CPython to nixpkgs]](https://img.youtube.com/vi/T79B4t80QZ4/0.jpg)](https://www.youtube.com/watch?v=T79B4t80QZ4)

Questions can only be asked by voice or chat in the meeting: https://meet.zrh.init7.net/nix-hour.

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

[00:00](https://www.youtube.com/watch?v=T79B4t80QZ4&t=0): Intro
[00:47](https://www.youtube.com/watch?v=T79B4t80QZ4&t=47): Q: Compiling CPython from source
[01:55](https://www.youtube.com/watch?v=T79B4t80QZ4&t=115): Python packages structure in nixpkgs
[03:07](https://www.youtube.com/watch?v=T79B4t80QZ4&t=187): Adding Python version to pythonInterpreters
[09:50](https://www.youtube.com/watch?v=T79B4t80QZ4&t=590): fetchurl vs fetchzip with GitHub
[12:20](https://www.youtube.com/watch?v=T79B4t80QZ4&t=740): Back to building CPython, adding patches
[17:13](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1033): Look for build times in Hydra
[18:37](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1117): Limiting parallelism in build process
[19:52](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1192): Adding CPython version in overlay
[22:06](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1326): Simple flake with an overlay
[25:52](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1552): Adjusting code from nixpkgs in overlay
[26:47](https://www.youtube.com/watch?v=T79B4t80QZ4&t=1607): Aside: callPackage and __splicedPackages
[35:00](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2100): Back to passing arguments to CPython build
[37:54](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2274): Overriding src definition
[40:56](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2456): Adding patches
[44:49](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2689): Fixing source hash
[46:30](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2790): Pinning nixpkgs revision in flake
[48:26](https://www.youtube.com/watch?v=T79B4t80QZ4&t=2906): Overriding pythonInterpreters and .override
[55:35](https://www.youtube.com/watch?v=T79B4t80QZ4&t=3335): Making sure master CPython runs
[56:24](https://www.youtube.com/watch?v=T79B4t80QZ4&t=3384): Could we use overrideAttrs on last CPython version?
[58:10](https://www.youtube.com/watch?v=T79B4t80QZ4&t=3490): Outro
