# The Nix Hour #12 [purity at eval-, build- and runtime]

[![The Nix Hour #12 [purity at eval-, build- and runtime]](https://img.youtube.com/vi/96jCLfKAa5M/0.jpg)](https://www.youtube.com/watch?v=96jCLfKAa5M)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=96jCLfKAa5M&t=0): Intro
* [01:13](https://www.youtube.com/watch?v=96jCLfKAa5M&t=73): Purity of Nix overview
* [02:16](https://www.youtube.com/watch?v=96jCLfKAa5M&t=136): Nix language evaluation purity
* [04:36](https://www.youtube.com/watch?v=96jCLfKAa5M&t=276): Demonstrating evaluation impurities
* [06:58](https://www.youtube.com/watch?v=96jCLfKAa5M&t=418): Repository is the flake evaluation input
* [11:43](https://www.youtube.com/watch?v=96jCLfKAa5M&t=703): CLI is the --pure-eval input
* [15:13](https://www.youtube.com/watch?v=96jCLfKAa5M&t=913): Derivation building purity
* [18:28](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1108): Demonstrating building impurities
* [21:12](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1272): Hacky way of forcing rebuilds every time
* [24:11](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1451): Testing the sandbox and disabling it
* [29:05](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1745): Only disabling the sandbox for specific derivations
* [30:47](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1847): Build randomness
* [31:59](https://www.youtube.com/watch?v=96jCLfKAa5M&t=1919): Why building is not fully pure even with the sandbox
* [34:34](https://www.youtube.com/watch?v=96jCLfKAa5M&t=2074): Relation to reproducibility
* [40:24](https://www.youtube.com/watch?v=96jCLfKAa5M&t=2424): Relation to content-addressed derivations
* [41:36](https://www.youtube.com/watch?v=96jCLfKAa5M&t=2496): Build result runtime purity
* [47:27](https://www.youtube.com/watch?v=96jCLfKAa5M&t=2847): Nix code to improve runtime purity
* [52:51](https://www.youtube.com/watch?v=96jCLfKAa5M&t=3171): Runtime purity comes from Nix code, not Nix itself
* [53:46](https://www.youtube.com/watch?v=96jCLfKAa5M&t=3226): Purity level conclusion
