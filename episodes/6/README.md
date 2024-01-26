# The Nix Hour #6 [closure size debugging]

[![The Nix Hour #6 [closure size debugging]](https://img.youtube.com/vi/U_DVlJHwyA4/0.jpg)](https://www.youtube.com/watch?v=U_DVlJHwyA4)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and is recorded and uploaded to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we looked at debugging closure sizes:

* [00:00](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=0): Finding a good package to demonstrate disallowedReferences
* [04:00](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=240): Looking up historical build times and closure sizes on Hydra
* [07:46](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=466): disallowedReferences and allowedReferences and related attributes in the manual
* [10:16](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=616): Triggering the disallowedReferences error
* [10:54](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=654): allowedReferences demo using nix-store --query
* [16:00](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=960): "Accidentally" adding a C compiler to the result
* [17:08](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=1028): Querying the closure size with nix path-info -S
* [19:33](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=1173): nix why-depends
* [24:10](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=1450): nix why-depends with flake references
* [26:21](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=1581): Best practices around using allowedReferences and co.
* [32:43](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=1963): (meta) Future GitHub issue tracker for Nix Hour questions
* [33:40](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=2020): Forcefully preventing dependencies with removeReferencesTo
* [37:15](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=2235): Gracefully preventing dependencies by changing relevant Nix expressions
* [45:40](https://www.youtube.com/watch?v=U_DVlJHwyA4&t=2740): How runtime dependencies in Nix work
