# The Nix Hour #17 [pkgConfigModules, some new lib functions, builder phases]

[![The Nix Hour #17 [pkgConfigModules, some new lib functions, builder phases]](https://img.youtube.com/vi/9EpgTv21kjo/0.jpg)](https://www.youtube.com/watch?v=9EpgTv21kjo)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=9EpgTv21kjo&t=0): Intro
* [00:48](https://www.youtube.com/watch?v=9EpgTv21kjo&t=48): What's new in Nix YouTube series
* [02:12](https://www.youtube.com/watch?v=9EpgTv21kjo&t=132): Nixpkgs news: pkgConfigModules
* [04:02](https://www.youtube.com/watch?v=9EpgTv21kjo&t=242): A brief look at multiple outputs
* [05:44](https://www.youtube.com/watch?v=9EpgTv21kjo&t=344): Back to pkgConfigModules
* [06:56](https://www.youtube.com/watch?v=9EpgTv21kjo&t=416): What is pkg-config
* [09:12](https://www.youtube.com/watch?v=9EpgTv21kjo&t=552): Trying to find the defaultPkgConfigPackages JSON
* [10:38](https://www.youtube.com/watch?v=9EpgTv21kjo&t=638): Default packages for pkg-config names
* [11:31](https://www.youtube.com/watch?v=9EpgTv21kjo&t=691): pkg-config testers
* [14:55](https://www.youtube.com/watch?v=9EpgTv21kjo&t=895): Use-cases for the pkg-config default package listing
* [15:28](https://www.youtube.com/watch?v=9EpgTv21kjo&t=928): Could this tester be added to every derivation?
* [16:37](https://www.youtube.com/watch?v=9EpgTv21kjo&t=997): It's hard to find significant changes in Nixpkgs
* [17:11](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1031): Benefits of multiple outputs
* [19:55](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1195): Trying to filter package update PR's using labels
* [21:50](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1310): Browser crash, please wait
* [22:53](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1373): lib.path.append
* [26:51](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1611): lib.path.subpath
* [28:18](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1698): Further motivation for path functions
* [29:08](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1748): Looking at lib.replicate and lib.concatLines
* [30:11](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1811): Emails are now optional in the Nixpkgs maintainer listing
* [31:27](https://www.youtube.com/watch?v=9EpgTv21kjo&t=1887): lib.updateManyAttrsByPath
* [35:30](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2130): Interlude
* [36:34](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2194): Unpack phase and default phases
* [41:04](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2464): Why you maybe shouldn't override the default phases
* [43:24](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2604): About emails being optional: People can't be reached privately anymore
* [44:48](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2688): Appending to hooks
* [47:37](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2857): Default actions of phases
* [48:37](https://www.youtube.com/watch?v=9EpgTv21kjo&t=2917): Why multiple phases are needed
* [50:33](https://www.youtube.com/watch?v=9EpgTv21kjo&t=3033): Use cases for additional phases inbetween standard ones
* [53:01](https://www.youtube.com/watch?v=9EpgTv21kjo&t=3181): Do all phases run in the same sandbox?
* [53:39](https://www.youtube.com/watch?v=9EpgTv21kjo&t=3219): Are there different limitations to different phases?
* [54:47](https://www.youtube.com/watch?v=9EpgTv21kjo&t=3287): Fetching from the internet during phases?
