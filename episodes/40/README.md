# The Nix Hour #40 [debugging and tracing NixOS modules]

[![The Nix Hour #40 [debugging and tracing NixOS modules]](https://img.youtube.com/vi/aLy8id4wr-M/0.jpg)](https://www.youtube.com/watch?v=aLy8id4wr-M)

Questions can only be asked by voice or chat in the meeting: https://meet.jit.si/nix-hour

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=aLy8id4wr-M&t=0): Intro
* [01:11](https://www.youtube.com/watch?v=aLy8id4wr-M&t=71): Q: Debugging derivations with Nix trace
* [02:32](https://www.youtube.com/watch?v=aLy8id4wr-M&t=152): Simplest NixOS module scaffolding
* [03:45](https://www.youtube.com/watch?v=aLy8id4wr-M&t=225): Aside: Catch-all NixOS types (raw, anything)
* [06:27](https://www.youtube.com/watch?v=aLy8id4wr-M&t=387): Getting a confusing error from NixOS module system
* [10:54](https://www.youtube.com/watch?v=aLy8id4wr-M&t=654): Difference from Nix 2.3
* [12:41](https://www.youtube.com/watch?v=aLy8id4wr-M&t=761): Adding information to the trace with builtins.addErrorContext
* [14:45](https://www.youtube.com/watch?v=aLy8id4wr-M&t=885): Looking at PR#8623: Stack trace improvements
  https://github.com/NixOS/nix/pull/8623
* [18:42](https://www.youtube.com/watch?v=aLy8id4wr-M&t=1122): Back to NixOS modules example
* [19:33](https://www.youtube.com/watch?v=aLy8id4wr-M&t=1173): lib.types.string is deprecated in favor of str
* [25:05](https://www.youtube.com/watch?v=aLy8id4wr-M&t=1505): Providing overridable defaults for NixOS options
* [32:17](https://www.youtube.com/watch?v=aLy8id4wr-M&t=1937): Pattern for overridable settings
* [34:02](https://www.youtube.com/watch?v=aLy8id4wr-M&t=2042): Injecting pkgs argument into module system without NixOS
* [35:15](https://www.youtube.com/watch?v=aLy8id4wr-M&t=2115): Strict evaluation and derivations
* [36:14](https://www.youtube.com/watch?v=aLy8id4wr-M&t=2174): nix-instantiate traverses attribute sets
* [37:15](https://www.youtube.com/watch?v=aLy8id4wr-M&t=2235): Creating options for values derived from other options
* [41:00](https://www.youtube.com/watch?v=aLy8id4wr-M&t=2460): Q: How to use pasthru.tests outside nixpkgs?
* [50:50](https://www.youtube.com/watch?v=aLy8id4wr-M&t=3050): Q: Changing dbeaver version in nixpkgs
* [52:39](https://www.youtube.com/watch?v=aLy8id4wr-M&t=3159): Issue with passing arrays to builder as arguments, pkgs.lib.escapeShellArgs
* [57:37](https://www.youtube.com/watch?v=aLy8id4wr-M&t=3457): Outro
