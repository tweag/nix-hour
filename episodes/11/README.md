# The Nix Hour #11 [nix-shell, mkShell, shell.nix, flakes]

[![The Nix Hour #11 [nix-shell, mkShell, shell.nix, flakes]](https://img.youtube.com/vi/_8DS6IqqrBA/0.jpg)](https://www.youtube.com/watch?v=_8DS6IqqrBA)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

00:28 nix-build and nix-shell overview
03:53 How to run custom phases in a nix-shell
08:48 Trying to build hello in nix-shell
11:03 Using hooks to customize phases
13:18 Default files, default.nix vs shell.nix
14:59 Basic mkShell
17:07 Inconsistencies between default.nix and shell.nix
19:48 Recommendation to have consistency, and mkShell's inputsFrom
25:20 shellHook and its uses
31:05 Combining multiple shells using inputsFrom
33:43 Question: Is there a builtin way to expose a shell for a derivation?
36:22 mkShell packages argument
39:49 Building and pushing all shell dependencies to a cache
42:53 Setting up a backwards-compatible Flake
49:00 Reusing the flake-locked nixpkgs for the traditional Nix
53:29 Formatting with alejandra and nix fmt
55:16 Question: How to install from flakes
56:30 nix-shell as a shebang man page
