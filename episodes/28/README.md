# The Nix Hour #28 [packaging shell scripts, wrappers, resholve]

[![The Nix Hour #28 [packaging shell scripts, wrappers, resholve]](https://img.youtube.com/vi/9l8vx0dcl6k/0.jpg)](https://www.youtube.com/watch?v=9l8vx0dcl6k)

Due to technical problems we couldn't live stream this week, so instead this is a local recording uploaded afterwards.

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=0): Intro
* [00:34](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=34): GitHub issue: How to package shell scripts
* [01:15](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=75): Packaging a simple shell script with runCommand
* [03:27](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=207): Using patchShebangs to fix refernce to Bash in shebang
* [04:28](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=268): Providing tools in PATH with makeWrapper
* [07:28](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=448): Binaries are not always in default output
* [08:00](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=480): Aside: querying nixpkgs using Nix language
* [11:28](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=688): Making sure to use output with binaries with getBin
* [13:34](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=814): Using makeBinPath to generate PATH
* [15:55](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=955): Switching to wrapProgram to wrap script in place
* [20:13](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=1213): Finding the source of self-referential result
* [21:01](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=1261): Making PATH "pure" by overwriting it in the wrapper
* [22:44](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=1364): Falling back on hardcoded binaries
* [23:38](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=1418): Trying out resholve to sub binary paths in the script
* [32:07](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=1927): Checking out resholve documentation
* [35:28](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2128): Switch to resholve.writeScriptBin
* [38:40](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2320): Manually resolving tool paths in the script
* [41:09](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2469): Looking at resholve Nix API implementation
* [42:39](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2559): Checking out nixpkgs writers for various languages
* [44:03](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2643): Inlining values from Nix into the script using substitute and substituteInPlace
* [49:50](https://www.youtube.com/watch?v=9l8vx0dcl6k&t=2990): Signoff
