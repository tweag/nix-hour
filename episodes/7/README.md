# The Nix Hour #7 [source filtering, writing package tests]

[![The Nix Hour #7 [source filtering, writing package tests]](https://img.youtube.com/vi/mOQI9Iiu4Uc/0.jpg)](https://www.youtube.com/watch?v=mOQI9Iiu4Uc)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

The Nix hour happens every week, is open to the public and live-streamed to the Tweag YouTube channel. For more info check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767

This week we discussed these topics:

* [00:00](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=0): Intro and updates
* [02:19](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=139): Implicit importing into the store from path values
* [04:36](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=276): result symlink being included in the source
* [05:53](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=353): Filtering result using builtins.path
* [10:46](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=646): Debugging the filtering not working
* [13:50](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=830): lib.cleanSource
* [16:41](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1001): Composing cleanSource and lib.sourceFilesBySuffices
* [19:30](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1170): Could comparisons error for different types?
* [20:45](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1245): Tracing source filtering with lib.sources.trace
* [21:40](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1300): Link between two builtin and nixpkgs source filtering
* [26:00](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1560): Using gitignore.nix
* [29:36](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=1776): Filtering multiple result symlinks
* [33:33](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2013): Importing single files into the store
* [34:24](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2064): Interlude, topic switch
* [35:46](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2146): Default mkDerivation check phases
* [39:28](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2368): pythonPackages' checkPhase is installCheckPhase
* [40:41](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2441): Testing with a separate derivation
* [42:45](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2565): NixOS tests associated to nixpkgs packages
* [44:37](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2677): Writing your own NixOS tests
* [47:59](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=2879): Writing a NixOS test script
* [52:28](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=3148): Debugging some error
* [53:52](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=3232): Default KVM requirement for NixOS tests
* [54:44](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=3284): Using finalPackage for consistency with overrides
* [58:00](https://www.youtube.com/watch?v=mOQI9Iiu4Uc&t=3480): Outro
