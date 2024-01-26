# The Nix Hour #19 [module system recursion, config vs config, common infinite recursion causes]

[![The Nix Hour #19 [module system recursion, config vs config, common infinite recursion causes]](https://img.youtube.com/vi/cZjOzOHb2ow/0.jpg)](https://www.youtube.com/watch?v=cZjOzOHb2ow)

The Nix Hour is a weekly beginner-oriented improvised Q&A-style lecture on Nix, where you can bring your questions and we'll answer them with more context, examples, alternatives, tradeoffs and related topics.

Feel free to ask questions using the live chat, or even ask questions directly by joining the meeting: https://meet.jit.si/nix-hour. Alternatively ask questions ahead of time by opening an issue in https://github.com/tweag/nix-hour

For more information and updates, check out https://discourse.nixos.org/t/the-nix-hour-a-weekly-nix-qa-lecture-by-tweag/22767


* [00:00](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=0): Intro
* [01:57](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=117): From a single fixed-point function to multiple functions
* [07:59](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=479): How the two config's differ
* [11:55](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=715): Why the config fixed-point works at all
* [13:07](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=787): How a simple type merge is implemented
* [18:22](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=1102): Implementing a simple merge operation
* [21:16](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=1276): Calling the merge operation for each attribute
* [25:54](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=1554): Steps towards a complete module system
* [28:21](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=1701): Infinite recursion from imports using config
* [34:15](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=2055): How mkIf avoids infinite recursion
* [40:03](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=2403): The options attribute
* [42:19](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=2539): Using imports or mkMerge to define an option multiple times
* [45:00](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=2700): Infinite recursion from mkMerge
* [47:51](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=2871): Using addErrorContext to add error context
* [50:29](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=3029): Workaround for infinite recursion from mkMerge
* [54:39](https://www.youtube.com/watch?v=cZjOzOHb2ow&t=3279): Outro
