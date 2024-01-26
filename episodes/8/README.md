# The Nix Hour #8 [debugging package failures, package file indices]

[![The Nix Hour #8 [debugging package failures, package file indices]](https://img.youtube.com/vi/cfCqauM9ztM/0.jpg)](https://www.youtube.com/watch?v=cfCqauM9ztM)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and live-streamed to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we looked at the following topics:

* [00:00](https://www.youtube.com/watch?v=cfCqauM9ztM&t=0): Intro: Looking at a breakage introduced with a new release
* [03:50](https://www.youtube.com/watch?v=cfCqauM9ztM&t=230): Git bisect: Finding a broken package for demonstration
* [05:41](https://www.youtube.com/watch?v=cfCqauM9ztM&t=341): Interlude: Difference between nixos- and release- branches
* [06:32](https://www.youtube.com/watch?v=cfCqauM9ztM&t=392): Finding a good and a bad commit for bisection
* [08:21](https://www.youtube.com/watch?v=cfCqauM9ztM&t=501): Starting the bisection
* [10:02](https://www.youtube.com/watch?v=cfCqauM9ztM&t=602): Faster build checks using nix-build-uncached
* [11:24](https://www.youtube.com/watch?v=cfCqauM9ztM&t=684): Automating the bisection
* [12:17](https://www.youtube.com/watch?v=cfCqauM9ztM&t=737): Question about testing things outside of nixpkgs/NixOS systems
* [13:43](https://www.youtube.com/watch?v=cfCqauM9ztM&t=823): Skipping a commit in case it needs to rebuild too many things
* [14:08](https://www.youtube.com/watch?v=cfCqauM9ztM&t=848): Looking up the PR for a commit once bisection finished
* [15:16](https://www.youtube.com/watch?v=cfCqauM9ztM&t=916): Building a NixOS VM from a configuration.nix file
* [18:42](https://www.youtube.com/watch?v=cfCqauM9ztM&t=1122): Making the VM to run in the terminal
* [22:25](https://www.youtube.com/watch?v=cfCqauM9ztM&t=1345): Creating an auto-logged in user for the VM
* [26:28](https://www.youtube.com/watch?v=cfCqauM9ztM&t=1588): How to test hardware-dependent packages
* [28:31](https://www.youtube.com/watch?v=cfCqauM9ztM&t=1711): patchelf and autoPatchelfHook
* [31:27](https://www.youtube.com/watch?v=cfCqauM9ztM&t=1887): Picking the right packages for patchelf
* [35:23](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2123): Using nix-index for finding packages containing specific files
* [38:13](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2293): Using nix-index-database to get a prebuilt index
* [41:09](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2469): Finding libasound.so.2 using nix-index
* [42:39](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2559): Nixpkgs aliases and nixpkgs CI
* [44:45](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2685): nix-index command-not-found shell integration
* [45:51](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2751): Interpolating a Nix package into a shell command
* [47:49](https://www.youtube.com/watch?v=cfCqauM9ztM&t=2869): comma command
* [50:18](https://www.youtube.com/watch?v=cfCqauM9ztM&t=3018): Trying to explain NixOS' command-not-found module, but mislead slightly
* [53:05](https://www.youtube.com/watch?v=cfCqauM9ztM&t=3185): programs.sqlite in Hydra channels
* [56:10](https://www.youtube.com/watch?v=cfCqauM9ztM&t=3370): Impurities in NixOS
* [58:57](https://www.youtube.com/watch?v=cfCqauM9ztM&t=3537): Website to check which channel has which PR included
