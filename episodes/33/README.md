# The Nix Hour #33 [overriding OpenSSL in Python, installing Python dependencies]

[![The Nix Hour #33 [overriding OpenSSL in Python, installing Python dependencies]](https://img.youtube.com/vi/zfeKl99iJ9E/0.jpg)](https://www.youtube.com/watch?v=zfeKl99iJ9E)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Files from this session: https://github.com/tweag/nix-hour/tree/master/33
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=0): Intro
* [00:24](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=24): Q: Why does Python needs "self" argument to override OpenSSL dependency?
* [01:07](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=67): Verifying locally
* [02:51](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=171): Using "self" in overlays instead of "rec", compared to "super"
* [04:15](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=255): Debugging why derivation is left unchanged
* [05:58](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=358): Looking for python package sources from all-packages.nix
* [06:55](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=415): Using unsafeGetAttrPos to find package sources.
* [08:38](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=518): Looking for python defined in aliases.nix
* [11:24](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=684): Overriding Python packages in overlays.
* [13:38](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=818): Q: Why does python3Packages exist?
* [15:54](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=954): Digging into pythonInterpreters
* [17:33](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1053): pythonPackagesExtensions
* [18:21](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1101): Cross-compilation support via __splicedPackages, makeScopeWithSplicing
* [22:17](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1337): Comparing normal Python and spliced one
* [24:00](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1440): Checking how callPackage generates __splicedPackages
* [26:50](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1610): Checking how cross-compilation platforms are set
* [28:20](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1700): Looking at cross-compilation in stdenv
* [30:34](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1834): Checking Python section of the manual
* [32:17](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=1937): Debugging the nixpkgs overlay
* [36:49](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=2209): Looking at the resulting derivation itself
* [44:27](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=2667): Finding out how openssl argument is handled in Python package
* [46:32](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=2792): Q: How to manage dependencies for Python project with Nix
* [47:13](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=2833): Looking for gdal package in nixpkgs
* [49:07](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=2947): "Installing" python package on NixOS system
* [54:41](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=3281): Adding Python packages to env with python3.withPackages
* [55:42](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=3342): Need for parethesis in packages list
* [57:09](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=3429): Other options
* [58:05](https://www.youtube.com/watch?v=zfeKl99iJ9E&t=3485): Signoff
