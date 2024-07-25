# The Nix Hour #25 [populating /bin on NixOS, buildEnv, symlinkJoin]

[![The Nix Hour #25 [populating /bin on NixOS, buildEnv, symlinkJoin]](https://img.youtube.com/vi/M-hhhNn-2kI/0.jpg)](https://www.youtube.com/watch?v=M-hhhNn-2kI)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=0): Intro, question from the audience: Why don't we make NixOS look like a normal distro
* [02:35](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=155): NixOS environment is similar to Nix build sandbox
* [05:01](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=301): Creating /bin symlinks with NixOS activation scripts
* [12:06](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=726): How do other system deal with this issue, why did NixOS do it this way
* [15:11](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=911): Testing activation script in VM
* [15:53](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=953): Issue with ordering pakcages with same binary names
* [17:34](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1054): How are binary name conflicts resolved in NixOS. systemPackages source.
* [18:50](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1130): Exploring buildEnv to construct binary symlinks
* [22:20](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1340): NixOS system's path derivation
* [24:23](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1463): Detecting and resolving collision between binaries with same name. hiPrio and lowPrio.
* [27:04](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1624): Keeping both binaries in path
* [29:11](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1751): Changing gcc10 binary name using overrideAttrs
* [32:10](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=1930): Using internal options in NixOS module system to expose intermediate results.
* [35:17](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2117): Changing derivation output using a wrapper derivation. symlinkJoin
* [39:13](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2353): Propagating attributes of the original derivation to the wrapper
* [40:28](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2428): Inspecting NixOS configuration in nix repl
* [41:35](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2495): https://nixos.wiki/wiki/Nix_Cookbook#Wrapping_packages
* [42:19](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2539): Creating an overlay in nixpkgs.overlay option
* [44:52](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2692): Symlinking /bin doesn't mean the package is properly installed
* [46:54](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2814): Comparing symlinkJoin and buildEnv
* [48:13](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=2893): Creating a separate package to override symlinks
* [52:18](https://www.youtube.com/watch?v=M-hhhNn-2kI&t=3138): /usr/bin/env exists on NixOS, but not in Nix build sandbox
