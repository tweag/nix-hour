# The Nix Hour #23 [from Nixpkgs to the NixOS ISO download, messy gnome VM configuration]

[![The Nix Hour #23 [from Nixpkgs to the NixOS ISO download, messy gnome VM configuration]](https://img.youtube.com/vi/DknShaVZ2II/0.jpg)](https://www.youtube.com/watch?v=DknShaVZ2II)

The Nix Hour is an open beginner-oriented Q&A-style lecture on Nix, where you can bring your questions and we’ll answer them with more context, examples, alternatives, tradeoffs and related topics.
Jitsi Meeting to ask questions directly: https://meet.jit.si/nix-hour
Matrix room for questions, feedback and notifications: https://matrix.to/#/%23nix-hour:matrix.org
Issue tracker for asynchronous questions: https://github.com/tweag/nix-hour/issues
Previous sessions playlist: https://www.youtube.com/playlist?list=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=DknShaVZ2II&t=0): Intro
* [01:17](https://www.youtube.com/watch?v=DknShaVZ2II&t=77): From the NixOS gnome download to the channels
* [03:55](https://www.youtube.com/watch?v=DknShaVZ2II&t=235): From the channels to the Hydra evaluation
* [05:26](https://www.youtube.com/watch?v=DknShaVZ2II&t=326): From the Hydra evaluation to the Nix expression
* [07:00](https://www.youtube.com/watch?v=DknShaVZ2II&t=420): Failing to figure out where the attribute is defined when I should've looked at the `nixos` attribute!
* [09:09](https://www.youtube.com/watch?v=DknShaVZ2II&t=549): Finding the iso_gnome definition and looking at its module
* [11:01](https://www.youtube.com/watch?v=DknShaVZ2II&t=661): Trying to figure out why it doesn't substitute from Hydra prebuilt version
* [30:10](https://www.youtube.com/watch?v=DknShaVZ2II&t=1810): Trying out Hydra's "reproduce locally" script
* [34:51](https://www.youtube.com/watch?v=DknShaVZ2II&t=2091): Giving up and instead starting to build a VM with gnome by unrolling imports
* [39:15](https://www.youtube.com/watch?v=DknShaVZ2II&t=2355): Building the VM using nixos-rebuild, nix-build and nom-build
* [41:48](https://www.youtube.com/watch?v=DknShaVZ2II&t=2508): While waiting for the build to finish, trying to again see why it didn't substitute before
* [43:15](https://www.youtube.com/watch?v=DknShaVZ2II&t=2595): Running the VM and fixing the auto-login not working
* [49:00](https://www.youtube.com/watch?v=DknShaVZ2II&t=2940): Trying to fix the small VM window size
