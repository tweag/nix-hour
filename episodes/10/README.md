# The Nix Hour #10 [packaging binaries, reviewing a PR]

[![The Nix Hour #10 [packaging binaries, reviewing a PR]](https://img.youtube.com/vi/QUnJ9q3Np7I/0.jpg)](https://www.youtube.com/watch?v=QUnJ9q3Np7I)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we covered the following topics:
00:26 Question: How to packaging downloadable binaries
04:06 Brief look at patchelf
05:03 Trying to package a shellcheck binary download
06:30 Fetchers probably don't use SSL
08:15 Continuing packaging shellcheck
10:33 Fetching archives using fetchzip
11:34 Moving the source for installation
13:02 Finishing and testing the result
14:39 Problem with the function-style mkDerivation
20:01 Question: What do primes ' in Nix functions names do?
23:19 Taking a look at a PR
25:07 Adding a maintainer
27:11 General look at the PR
28:33 Checking out the PR branch and building it locally
30:22 How to manually trigger Nixpkgs CI
34:19 Building 32-bit packages
36:31 Making sure that packages are tested
38:13 Basic package checks for security
40:31 Understanding the code and potential refactors
50:24 Implementing and suggesting a simple refactoring
