# The Nix Hour #16 [parametrized module system options]

[![The Nix Hour #16 [parametrized module system options]](https://img.youtube.com/vi/lO0x0Kk9wTM/0.jpg)](https://www.youtube.com/watch?v=lO0x0Kk9wTM)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=0): Intro and looking at the question
* [01:17](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=77): How users.extraUsers is defined and why it exists alongside users.users
* [10:02](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=602): Why double users.users
* [11:00](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=660): Declaring, defining and using your own module system options
* [17:32](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=1052): The attrsOf option type
* [22:29](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=1349): The submodule option type
* [31:05](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=1865): Problem with declaring options in submodule definitions
* [34:10](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=2050): Looking at the option type documentation
* [35:24](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=2124): The useful pattern of combining attrsOf and submodule
* [42:48](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=2568): Accessing the attribute name in the submodule
* [44:52](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=2692): Parametrized options in the manual
* [47:12](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=2832): Extending parametrized options, merging types
* [52:28](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=3148): Implementing extended parametrized option behavior
* [54:12](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=3252): Trying to build the system, takes too long though
* [56:00](https://www.youtube.com/watch?v=lO0x0Kk9wTM&t=3360): Recommendation: Use attrsOf instead of listOf for improved overridability
