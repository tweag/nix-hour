# The Nix Hour #1 [nixcon, reviewing a PR, debugging and tracing Nix evaluation]

[![The Nix Hour #1 [nixcon, reviewing a PR, debugging and tracing Nix evaluation]](https://img.youtube.com/vi/wwV1204mCtE/0.jpg)](https://www.youtube.com/watch?v=wwV1204mCtE)

This was the first public Nix Hour, hosted by Silvan Mosberger on 2022-10-22 at Nixcon 2022 titled QA Nix Lecture: https://talks.nixcon.org/nixcon-2022/talk/G3DUDG/

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and is recorded and uploaded to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week the following topics were covered:

* [0:00](https://www.youtube.com/watch?v=wwV1204mCtE&t=0): Initial look at PR 186314
* [2:35](https://www.youtube.com/watch?v=wwV1204mCtE&t=155): Markdown documentation in NixOS options
* [3:05](https://www.youtube.com/watch?v=wwV1204mCtE&t=185): Systemd unit types and index manpage
* [4:14](https://www.youtube.com/watch?v=wwV1204mCtE&t=254): Another look at the PR
* [6:04](https://www.youtube.com/watch?v=wwV1204mCtE&t=364): Pattern for handling enumerations
* [8:03](https://www.youtube.com/watch?v=wwV1204mCtE&t=483): lib.partition for splitting a list of values into two
* [10:05](https://www.youtube.com/watch?v=wwV1204mCtE&t=605): lib.groupBy for splitting a list of values into more subsets
* [12:30](https://www.youtube.com/watch?v=wwV1204mCtE&t=750): Following lib.groupBy with a lib.mapAttrs
* [13:22](https://www.youtube.com/watch?v=wwV1204mCtE&t=802): Trying to figure out the evaluation error without reading the error message
* [14:53](https://www.youtube.com/watch?v=wwV1204mCtE&t=893): Adding tracing using lib.debug.traceSeq
* [16:49](https://www.youtube.com/watch?v=wwV1204mCtE&t=1009): nix-instantiate flags relating to lazy/strict evaluation
* [17:56](https://www.youtube.com/watch?v=wwV1204mCtE&t=1076): Realizing the problem, missing --strict with --json
* [18:20](https://www.youtube.com/watch?v=wwV1204mCtE&t=1100): nix eval strictness
* [19:09](https://www.youtube.com/watch?v=wwV1204mCtE&t=1149): Setup to demonstrate problem with nix eval strictness compared to nix-instantiate
* [20:24](https://www.youtube.com/watch?v=wwV1204mCtE&t=1224): nix repl derivation output
* [22:00](https://www.youtube.com/watch?v=wwV1204mCtE&t=1320): Demonstrating problem with nix eval strictness compared to nix-instantiate
* [24:12](https://www.youtube.com/watch?v=wwV1204mCtE&t=1452): Using the GitHub CLI to check out PR 186314
* [25:13](https://www.youtube.com/watch?v=wwV1204mCtE&t=1513): Trying to do a "quick" refactoring using lib.groupBy and the enum handling pattern from earlier
* [32:27](https://www.youtube.com/watch?v=wwV1204mCtE&t=1947): How to find documentation for nixpkgs library functions
* [33:49](https://www.youtube.com/watch?v=wwV1204mCtE&t=2029): Except for Nix builtin functions re-exported from the nixpkgs library
* [34:38](https://www.youtube.com/watch?v=wwV1204mCtE&t=2078): How to find documentation for Nix builtin functions
* [35:16](https://www.youtube.com/watch?v=wwV1204mCtE&t=2116): nix repl :doc command for Nix builtin function docs
* [35:51](https://www.youtube.com/watch?v=wwV1204mCtE&t=2151): Starting a failed attempt at trying to add documentation to re-exported builtin functions
* [36:56](https://www.youtube.com/watch?v=wwV1204mCtE&t=2216): Trying out the Nix debugger
* [38:55](https://www.youtube.com/watch?v=wwV1204mCtE&t=2335): Working around a problem in the Nix debugger relating to builtins.tryEval
* [40:11](https://www.youtube.com/watch?v=wwV1204mCtE&t=2411): Inspecting variables in the error
* [40:32](https://www.youtube.com/watch?v=wwV1204mCtE&t=2432): Changing to another trace in the stack
* [41:45](https://www.youtube.com/watch?v=wwV1204mCtE&t=2505): Resuming the failed attempt at trying to add documentation for re-exported builtin functions
* [43:02](https://www.youtube.com/watch?v=wwV1204mCtE&t=2582): Trying to use the doc Makefile for more incremental builds
* [46:59](https://www.youtube.com/watch?v=wwV1204mCtE&t=2819): Looking closer at lib.debug
* [50:45](https://www.youtube.com/watch?v=wwV1204mCtE&t=3045): Trying out lib.generators.toPretty
* [51:40](https://www.youtube.com/watch?v=wwV1204mCtE&t=3100): Looking at builtins.seq and builtins.deepSeq
* [53:53](https://www.youtube.com/watch?v=wwV1204mCtE&t=3233): Looking at the implementation of builtins.seq
* [55:26](https://www.youtube.com/watch?v=wwV1204mCtE&t=3326): The strictness of attribute keys and list sizes
