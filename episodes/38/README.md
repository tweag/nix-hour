# The Nix Hour #38 [evaluation caching and performance in Nix]

[![The Nix Hour #38 [evaluation caching and performance in Nix]](https://img.youtube.com/vi/WzCHnM_vsMk/0.jpg)](https://www.youtube.com/watch?v=WzCHnM_vsMk)

Questions can only be asked by voice or chat in the meeting: https://meet.jit.si/nix-hour
Vote for the new Nix Hour time here: https://discourse.nixos.org/t/poll-nix-hour-iteration-3-new-date-and-time/30968

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.

Files from this session: https://github.com/tweag/nix-hour/tree/master/38

Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=0): Intro, vote for new Nix Hour time
* [00:58](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=58): Q: What does 2023 Nix cache?
* [02:35](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=155): Thunk evaluation is cached in memory
* [10:56](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=656): File import in-memory cache
* [14:03](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=843): Leveraging evaluation cache with let-in
* [17:32](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=1052): Leveraging file import cache
* [19:40](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=1180): On-disk evaluation cache for flakes
* [28:46](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=1726): Rules for recursing into attrsets in nixpkgs
* [32:44](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=1964): How is pkgs.pkgs populated
* [36:52](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=2212): Debugging evaluation performance with NIX_SHOW_STATS
* [44:51](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=2691): NIX_COUNT_CALLS and trace-function-calls
* [50:12](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=3012): How it works with nixpkgs
* [52:34](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=3154): Using hyperfine for benchmarking
* [52:48](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=3168): Manual benchmarking using sta for reports
* [54:41](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=3281): ofborg evaluation performance report for PRs
* [59:31](https://www.youtube.com/watch?v=WzCHnM_vsMk&t=3571): Outro, don't forget to vote for new time
