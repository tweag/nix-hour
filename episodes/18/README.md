# The Nix Hour #18 [fixed-points, makeExtensible, makeScope]

[![The Nix Hour #18 [fixed-points, makeExtensible, makeScope]](https://img.youtube.com/vi/BgnUFtd1Ivs/0.jpg)](https://www.youtube.com/watch?v=BgnUFtd1Ivs)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=0): Question: What's callPackage, newScope and makeScope?
* [01:20](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=80): A simple interdependent package set using pkgs.callPackage
* [04:42](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=282): Using a fixed-point function for less repetition
* [07:03](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=423): Making the package set extensible using lib.makeExtensible
* [12:55](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=775): Using makeScope and newScope for extending the nixpkgs scope
* [16:35](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=995): A potential approach of nesting your own packages to avoid accidental overrides
* [18:27](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1107): Changing how the default is passed
* [19:45](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1185): Further nesting scopes using makeScope
* [23:13](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1393): Cross-compilation with makeScopeWithSplicing
* [27:21](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1641): Overlaying using overrideScope, accidentally mixing up the argument ordering
* [30:49](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1849): makeScope overview
* [32:36](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=1956): Question: How to not have all Nixpkgs packages in the callPackage scope?
* [34:42](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=2082): Using makeExtensible to create a new empty callPackage scope
* [37:52](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=2272): Using makeScope to create a new empty callPackage scope
* [42:37](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=2557): Comparing the different scope approaches
* [45:48](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=2748): Manually evaluating a fixed-point function
* [52:20](https://www.youtube.com/watch?v=BgnUFtd1Ivs&t=3140): Using composeExtensions to compose two extensions into one
