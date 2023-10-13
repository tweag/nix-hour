# The Nix Hour #2 [overriding derivations, fixed-output derivations, sharing closures]

[![The Nix Hour #2 [overriding derivations, fixed-output derivations, sharing closures]](https://img.youtube.com/vi/x3EDiAKbnyI/0.jpg)](https://www.youtube.com/watch?v=x3EDiAKbnyI)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and is recorded and uploaded to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we've covered these topics:

* [00:00](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=0): Intro
* [00:26](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=26): Question: How to override the source of a package
* [01:47](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=107): Difference between .override and .overrideAttrs
* [04:26](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=266): Updating derivation attributes
* [06:02](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=362): "or" operator precedence confusion
* [06:38](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=398): Back to overriding the source
* [07:18](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=438): Replacing "rec"s in mkDerivation with a function
* [10:15](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=615): Overriding the hash of a source
* [11:56](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=716): Demonstrating mkDerivation with a function
* [13:03](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=783): Trying to override the hash of a fetcher derivation directly
* [15:32](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=932): Nulling the hash to force a refetch
* [16:46](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1006): Trying to figure out why overriding the hash didn't work
* [18:51](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1131): Figuring it out: "sha256" is not a derivation attribute
* [20:45](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1245): We can't use override either
* [21:59](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1319): Overriding "outputHash" using "overrideAttrs"
* [22:47](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1367): Clarification about difference between similar problems
* [24:51](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1491): How overriding sha256 with overrideAttrs could work more nicely
* [26:58](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1618): Conclusion about source overriding
* [28:50](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1730): SRI hashes and the "hash" fetcher argument
* [31:09](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=1869): "flat" file hashes
* [34:04](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=2044): "recursive" NAR hashes
* [39:38](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=2378): Conclusion "flat" vs "recursive" hashing
* [40:43](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=2443): Why fetchFromGitHub uses "recursive" hashing
* [43:14](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=2594): What changes is the NAR archive format sensitive to?
* [45:42](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=2742): Sharing derivations using nix-store --export and --import and some other useful flags
* [52:40](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=3160): Deleting store paths, nix-store --roots and garbage collection
* [54:41](https://www.youtube.com/watch?v=x3EDiAKbnyI&t=3281): Outro
