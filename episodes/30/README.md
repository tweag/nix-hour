# The Nix Hour #30 [2nix tooling differences, flakes motivation]

[![The Nix Hour #30 [2nix tooling differences, flakes motivation]](https://img.youtube.com/vi/9o_A2loSH-0/0.jpg)](https://www.youtube.com/watch?v=9o_A2loSH-0)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Files from this session: https://github.com/tweag/nix-hour/tree/master/30
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=9o_A2loSH-0&t=0): Intro
* [01:35](https://www.youtube.com/watch?v=9o_A2loSH-0&t=95): Question: Integrating Nix with ecosystems like Rust, NPM
* [03:35](https://www.youtube.com/watch?v=9o_A2loSH-0&t=215): Aside: what is nix-community organisation
* [06:11](https://www.youtube.com/watch?v=9o_A2loSH-0&t=371): Tools for packaging Python
* [07:12](https://www.youtube.com/watch?v=9o_A2loSH-0&t=432): Overview of dream2nix
* [08:10](https://www.youtube.com/watch?v=9o_A2loSH-0&t=490): Q: What companies develop and use these tools?
* [09:28](https://www.youtube.com/watch?v=9o_A2loSH-0&t=568): Checking out poetry2nix
* [12:09](https://www.youtube.com/watch?v=9o_A2loSH-0&t=729): Aside: list element access in Nix repl vs CLI
* [13:49](https://www.youtube.com/watch?v=9o_A2loSH-0&t=829): Back to poetry2nix, fetching dependencies by hash with Nix
* [16:48](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1008): Separating Python dependencies by Python version and system
* [17:50](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1070): Comparing poetry.lock to requirements.txt
* [19:06](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1146): Package hashes from Hackage ecosystem in Nix, all-cabal-hashes and callHackage
* [22:56](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1376): Q: What software architectures does Nix support?
* [24:45](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1485): Impure software packaged with Nix
* [27:47](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1667): CI/CD, https://floxdev.com, https://cachix.org, https://hercules-ci.com
* [29:35](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1775): Using Nix in GitHub Actions, cachix/install-nix-action, cachix/cachix-action
* [30:41](https://www.youtube.com/watch?v=9o_A2loSH-0&t=1841): Using Nix in CI for impure builds or software, transitioning to pure Nix
* [36:30](https://www.youtube.com/watch?v=9o_A2loSH-0&t=2190): Comment about lack of standardization of approaches and solutions
* [36:54](https://www.youtube.com/watch?v=9o_A2loSH-0&t=2214): Impurities in packaging without flakes
* [45:09](https://www.youtube.com/watch?v=9o_A2loSH-0&t=2709): Adding custom attributes to default derivation
* [47:20](https://www.youtube.com/watch?v=9o_A2loSH-0&t=2840): How to do the same with flakes
* [53:43](https://www.youtube.com/watch?v=9o_A2loSH-0&t=3223): Why does nixpkgs use legacyPackages instead of packages
* [57:06](https://www.youtube.com/watch?v=9o_A2loSH-0&t=3426): flake-utils
* [59:45](https://www.youtube.com/watch?v=9o_A2loSH-0&t=3585): Out of time
