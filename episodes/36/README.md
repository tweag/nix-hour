# The Nix Hour #36 [RFC 140: Simple Package Paths]

[![The Nix Hour #36 [RFC 140: Simple Package Paths]](https://img.youtube.com/vi/iK0tu9GkCWQ/0.jpg)](https://www.youtube.com/watch?v=iK0tu9GkCWQ)

Questions can only be asked by voice or chat in the meeting: https://meet.jit.si/nix-hour

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=0): Intro
* [00:24](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=24): RFC 140: Simple Package Paths
* [01:27](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=87): Adding package in a new structure
* [04:12](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=252): Comparing to the current all-packages.nix approach
* [08:15](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=495): Error handling for pkgs/by-name
* [10:45](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=645): Access to files from other packages is blocked
* [23:38](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=1418): How find package source file through meta.
* [30:51](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=1851): Defining derivation environment variables using env attr.
* [35:29](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=2129): Upcoming __cleanAttrs feature
* [42:21](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=2541): overriteAttrs with env attribute
* [45:53](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=2753): RFC 140 implementation: how shards are merged together
* [49:19](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=2959): aside: Different fold functions in Nix and nixpkgs.lib
* [52:05](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=3125): Back to RFC 140: merging big attrsets, mergeAttrsList
* [59:06](https://www.youtube.com/watch?v=iK0tu9GkCWQ&t=3546): Outro
  
  RFC 140: https://github.com/NixOS/rfcs/blob/master/rfcs/0140-simple-package-paths.md
  Implementation Part 1: https://github.com/NixOS/nixpkgs/pull/237439
  __cleanAttrs PR: https://github.com/NixOS/nixpkgs/pull/217243
  mergeAttrsList PR: https://github.com/NixOS/nixpkgs/pull/244187
