# The Nix Hour #34 [python3.withPackages vs python3Packages, file sets]

[![The Nix Hour #34 [python3.withPackages vs python3Packages, file sets]](https://img.youtube.com/vi/4HEfRYp-S8c/0.jpg)](https://www.youtube.com/watch?v=4HEfRYp-S8c)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Files from this session: https://github.com/tweag/nix-hour/tree/master/34
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

File sets links:
Discourse post: https://discourse.nixos.org/t/easy-source-filtering-with-file-sets/29117/3
Rendered documentation: https://tweag.github.io/nixpkgs/file-sets/manual.html#sec-functions-library-fileset


* [00:00](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=0): Intro, no Nix Hour for the next 2 weeks
* [00:54](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=54): Q: what is the difference between using python.pkgs and python.withPackages
* [01:51](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=111): nix-shell and python3Packages
* [02:55](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=175): nix-shell and withPackages
* [03:32](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=212): venv usage works with withPackages, but not with python3Packages
* [04:39](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=279): Looking at PYTHONPATH with both variants
* [06:15](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=375): makeBinaryWrapper
* [09:58](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=598): difference between buildInputs and python.withPackages
* [10:52](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=652): buildInputs can poison derivation environment with setup-hook
* [12:19](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=739): python3.withPackages only provides one binary instead
* [13:07](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=787): Recommend using buildPythonPackage when possible
* [14:36](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=876): File sets: why, what and how.
* [15:25](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=925): Current state of things: using ./. as src for derivation
* [19:25](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1165): Comparing resulting derivations and their srcs
* [22:22](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1342): Flakes don't have this particular issue, replicating that behavior with fetchGit
* [25:27](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1527): Still not ideal: any change to git repo triggers rebuild
* [26:19](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1579): Excluding files from the src with builtins.path
* [31:58](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1918): Paths and strings in Nix are never equal
* [32:51](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1971): Filtering out object files
* [34:22](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2062): Filter always recurses into subdirectories
* [27:47](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=1667): Including only one subdirectory
* [39:25](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2365): File sets overview
* [41:15](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2475): Functions: union
* [41:35](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2495): Functions: trace
* [42:49](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2569): Functions: difference
* [43:50](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2630): Functions: fileFilter
* [45:06](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2706): Functions: intersect
* [45:25](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2725): Nothing is imported into Nix store
* [47:17](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2837): Functions: toSource
* [49:22](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=2962): Switching to file sets in our example, "unions" function
* [56:00](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=3360): File sets overview summary
* [59:06](https://www.youtube.com/watch?v=4HEfRYp-S8c&t=3546): Outro, see you in 3 weeks
