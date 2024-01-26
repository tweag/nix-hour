# The Nix Hour #15 [multi-lang packages, FOD locking, stdenv bootstrapping]

[![The Nix Hour #15 [multi-lang packages, FOD locking, stdenv bootstrapping]](https://img.youtube.com/vi/pTY27vxIXiY/0.jpg)](https://www.youtube.com/watch?v=pTY27vxIXiY)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=pTY27vxIXiY&t=0): Intro
* [00:30](https://www.youtube.com/watch?v=pTY27vxIXiY&t=30): Question: Packaging multi-language packages (Go + Python here)
* [04:14](https://www.youtube.com/watch?v=pTY27vxIXiY&t=254): Looking at an example in nixpkgs
* [06:31](https://www.youtube.com/watch?v=pTY27vxIXiY&t=391): How builders are implemented underneath, can be reproduced independently
* [13:05](https://www.youtube.com/watch?v=pTY27vxIXiY&t=785): Using fixed-output derivations to get network access for arbitrary derivations
* [17:37](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1057): High-level conclusion for the question
* [18:55](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1135): Recommendation: Lock fetches individually
* [23:37](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1417): Brief mention of dream2nix
* [25:39](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1539): What is stdenv and why does it need to be bootstrapped
* [28:07](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1687): YouTube question: How to get auto-completion in ZSH 
* [28:48](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1728): Looking at the stdenv entrypoint
* [29:54](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1794): Bootstrap files definition
* [32:56](https://www.youtube.com/watch?v=pTY27vxIXiY&t=1976): How bootstrap files are built
* [34:16](https://www.youtube.com/watch?v=pTY27vxIXiY&t=2056): What the bootstrap files contain
* [36:15](https://www.youtube.com/watch?v=pTY27vxIXiY&t=2175): Trying to find the stdenv bootstrapping stages
* [37:48](https://www.youtube.com/watch?v=pTY27vxIXiY&t=2268): Rough overview of how stdenv bootstrapping stages work
* [43:53](https://www.youtube.com/watch?v=pTY27vxIXiY&t=2633): Looking at dependencies of the incremental stdenv bootstrapping stages
* [46:16](https://www.youtube.com/watch?v=pTY27vxIXiY&t=2776): Alternate and simpler bootstrapping project
* [50:12](https://www.youtube.com/watch?v=pTY27vxIXiY&t=3012): Remembering the now-removed nix/config.nix
* [51:04](https://www.youtube.com/watch?v=pTY27vxIXiY&t=3064): Bootstrapping Nix itself and conclusion
