# The Nix Hour #27 [hacking npmlock2nix, overriding derivations]

[![The Nix Hour #27 [hacking npmlock2nix, overriding derivations]](https://img.youtube.com/vi/LgcHmEfWobU/0.jpg)](https://www.youtube.com/watch?v=LgcHmEfWobU)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Files from this session: https://github.com/tweag/nix-hour/tree/master/27
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=LgcHmEfWobU&t=0): Intro, audience question about npmlock2nix
* [00:50](https://www.youtube.com/watch?v=LgcHmEfWobU&t=50): Look at npmlock2nix
* [03:11](https://www.youtube.com/watch?v=LgcHmEfWobU&t=191): Starting a new Nix project using niv
* [04:47](https://www.youtube.com/watch?v=LgcHmEfWobU&t=287): Getting example of npmlock2nix failing
* [07:03](https://www.youtube.com/watch?v=LgcHmEfWobU&t=423): Adding npmlock2nix to the project
* [12:00](https://www.youtube.com/watch?v=LgcHmEfWobU&t=720): How does npmlock2nix work
* [19:11](https://www.youtube.com/watch?v=LgcHmEfWobU&t=1151): Overriding buildInputs attribute for mkShell result
* [23:02](https://www.youtube.com/watch?v=LgcHmEfWobU&t=1382): Removing unwanted item from buildInputs
* [25:10](https://www.youtube.com/watch?v=LgcHmEfWobU&t=1510): Aside: Comparing derivations in Nix
* [28:48](https://www.youtube.com/watch?v=LgcHmEfWobU&t=1728): Removing unwanted item from buildInputs
* [29:47](https://www.youtube.com/watch?v=LgcHmEfWobU&t=1787): Debugging with lib.debug.trace
* [34:15](https://www.youtube.com/watch?v=LgcHmEfWobU&t=2055): Overriding shellHook
* [40:15](https://www.youtube.com/watch?v=LgcHmEfWobU&t=2415): Debugging unexpected dependency of derivation
* [48:35](https://www.youtube.com/watch?v=LgcHmEfWobU&t=2915): Looking at the end result
* [49:03](https://www.youtube.com/watch?v=LgcHmEfWobU&t=2943): How to make npmlock2nix more overridable
* [57:25](https://www.youtube.com/watch?v=LgcHmEfWobU&t=3445): Out of time, wrapping up
