# The Nix Hour #13 [nixpkgs entry-point and structure, derivation string coercion]

[![The Nix Hour #13 [nixpkgs entry-point and structure, derivation string coercion]](https://img.youtube.com/vi/Vca3meCWaLo/0.jpg)](https://www.youtube.com/watch?v=Vca3meCWaLo)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=Vca3meCWaLo&t=0): Intro and question
* [01:24](https://www.youtube.com/watch?v=Vca3meCWaLo&t=84): Nixpkgs entry point and how to get the top-level value
* [04:01](https://www.youtube.com/watch?v=Vca3meCWaLo&t=241): From default.nix over internal overlays to all-packages.nix
* [11:52](https://www.youtube.com/watch?v=Vca3meCWaLo&t=712): Package definitions their (non-)structure in all-packages.nix
* [19:11](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1151): Rough directory categorization
* [20:19](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1219): Querying attribute position using builtins.unsafeGetAttrPos
* [22:51](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1371): Disallowing alias use and demonstration
* [26:01](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1561): CLI function auto-calling
* [30:30](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1830): Passing arguments to Nix expressions from the CLI
* [32:00](https://www.youtube.com/watch?v=Vca3meCWaLo&t=1920): Continuing disallowing alias demonstration
* [33:43](https://www.youtube.com/watch?v=Vca3meCWaLo&t=2023): Trying to find the definition of stdenv.mkDerivation by definition (but then giving up and jumping to it directly)
* [38:12](https://www.youtube.com/watch?v=Vca3meCWaLo&t=2292): Looking at some mkDerivation arguments
* [40:47](https://www.youtube.com/watch?v=Vca3meCWaLo&t=2447): How meta.position works
* [43:06](https://www.youtube.com/watch?v=Vca3meCWaLo&t=2586): mkDerivation attribute string coercion into environment variables
* [47:00](https://www.youtube.com/watch?v=Vca3meCWaLo&t=2820): List to string coercion
* [50:25](https://www.youtube.com/watch?v=Vca3meCWaLo&t=3025): Using structured attributes
