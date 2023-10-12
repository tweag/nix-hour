# Nix-Hour Index


## The Nix Hour #1 [nixcon, reviewing a PR, debugging and tracing Nix evaluation]

 - [0:00](https://www.youtube.com/live/wwV1204mCtE?t=0m00s) Initial look at PR 186314
 - [2:35](https://www.youtube.com/live/wwV1204mCtE?t=2m35s) Markdown documentation in NixOS options
 - [3:05](https://www.youtube.com/live/wwV1204mCtE?t=3m05s) Systemd unit types and index manpage
 - [4:14](https://www.youtube.com/live/wwV1204mCtE?t=4m14s) Another look at the PR
 - [6:04](https://www.youtube.com/live/wwV1204mCtE?t=6m04s) Pattern for handling enumerations
 - [8:03](https://www.youtube.com/live/wwV1204mCtE?t=8m03s) lib.partition for splitting a list of values into two
 - [10:05](https://www.youtube.com/live/wwV1204mCtE?t=10m05s) lib.groupBy for splitting a list of values into more subsets
 - [12:30](https://www.youtube.com/live/wwV1204mCtE?t=12m30s) Following lib.groupBy with a lib.mapAttrs
 - [13:22](https://www.youtube.com/live/wwV1204mCtE?t=13m22s) Trying to figure out the evaluation error without reading the error message
 - [14:53](https://www.youtube.com/live/wwV1204mCtE?t=14m53s) Adding tracing using lib.debug.traceSeq
 - [16:49](https://www.youtube.com/live/wwV1204mCtE?t=16m49s) nix-instantiate flags relating to lazy/strict evaluation
 - [17:56](https://www.youtube.com/live/wwV1204mCtE?t=17m56s) Realizing the problem, missing --strict with --json
 - [18:20](https://www.youtube.com/live/wwV1204mCtE?t=18m20s) nix eval strictness
 - [19:09](https://www.youtube.com/live/wwV1204mCtE?t=19m09s) Setup to demonstrate problem with nix eval strictness compared to nix-instantiate
 - [20:24](https://www.youtube.com/live/wwV1204mCtE?t=20m24s) nix repl derivation output
 - [22:00](https://www.youtube.com/live/wwV1204mCtE?t=22m00s) Demonstrating problem with nix eval strictness compared to nix-instantiate
 - [24:12](https://www.youtube.com/live/wwV1204mCtE?t=24m12s) Using the GitHub CLI to check out PR 186314
 - [25:13](https://www.youtube.com/live/wwV1204mCtE?t=25m13s) Trying to do a "quick" refactoring using lib.groupBy and the enum handling pattern from earlier
 - [32:27](https://www.youtube.com/live/wwV1204mCtE?t=32m27s) How to find documentation for nixpkgs library functions
 - [33:49](https://www.youtube.com/live/wwV1204mCtE?t=33m49s) Except for Nix builtin functions re-exported from the nixpkgs library
 - [34:38](https://www.youtube.com/live/wwV1204mCtE?t=34m38s) How to find documentation for Nix builtin functions
 - [35:16](https://www.youtube.com/live/wwV1204mCtE?t=35m16s) nix repl :doc command for Nix builtin function docs
 - [35:51](https://www.youtube.com/live/wwV1204mCtE?t=35m51s) Starting a failed attempt at trying to add documentation to re-exported builtin functions
 - [36:56](https://www.youtube.com/live/wwV1204mCtE?t=36m56s) Trying out the Nix debugger
 - [38:55](https://www.youtube.com/live/wwV1204mCtE?t=38m55s) Working around a problem in the Nix debugger relating to builtins.tryEval
 - [40:11](https://www.youtube.com/live/wwV1204mCtE?t=40m11s) Inspecting variables in the error
 - [40:32](https://www.youtube.com/live/wwV1204mCtE?t=40m32s) Changing to another trace in the stack
 - [41:45](https://www.youtube.com/live/wwV1204mCtE?t=41m45s) Resuming the failed attempt at trying to add documentation for re-exported builtin functions
 - [43:02](https://www.youtube.com/live/wwV1204mCtE?t=43m02s) Trying to use the doc Makefile for more incremental builds
 - [46:59](https://www.youtube.com/live/wwV1204mCtE?t=46m59s) Looking closer at lib.debug
 - [50:45](https://www.youtube.com/live/wwV1204mCtE?t=50m45s) Trying out lib.generators.toPretty
 - [51:40](https://www.youtube.com/live/wwV1204mCtE?t=51m40s) Looking at builtins.seq and builtins.deepSeq
 - [53:53](https://www.youtube.com/live/wwV1204mCtE?t=53m53s) Looking at the implementation of builtins.seq
 - [55:26](https://www.youtube.com/live/wwV1204mCtE?t=55m26s) The strictness of attribute keys and list sizes



## The Nix Hour #2 [overriding derivations, fixed-output derivations, sharing closures]

 - [00:00](https://www.youtube.com/live/x3EDiAKbnyI?t=00m00s) Intro
 - [00:26](https://www.youtube.com/live/x3EDiAKbnyI?t=00m26s) Question: How to override the source of a package
 - [01:47](https://www.youtube.com/live/x3EDiAKbnyI?t=01m47s) Difference between .override and .overrideAttrs
 - [04:26](https://www.youtube.com/live/x3EDiAKbnyI?t=04m26s) Updating derivation attributes
 - [06:02](https://www.youtube.com/live/x3EDiAKbnyI?t=06m02s) "or" operator precedence confusion
 - [06:38](https://www.youtube.com/live/x3EDiAKbnyI?t=06m38s) Back to overriding the source
 - [07:18](https://www.youtube.com/live/x3EDiAKbnyI?t=07m18s) Replacing "rec"s in mkDerivation with a function
 - [10:15](https://www.youtube.com/live/x3EDiAKbnyI?t=10m15s) Overriding the hash of a source
 - [11:56](https://www.youtube.com/live/x3EDiAKbnyI?t=11m56s) Demonstrating mkDerivation with a function
 - [13:03](https://www.youtube.com/live/x3EDiAKbnyI?t=13m03s) Trying to override the hash of a fetcher derivation directly
 - [15:32](https://www.youtube.com/live/x3EDiAKbnyI?t=15m32s) Nulling the hash to force a refetch
 - [16:46](https://www.youtube.com/live/x3EDiAKbnyI?t=16m46s) Trying to figure out why overriding the hash didn't work
 - [18:51](https://www.youtube.com/live/x3EDiAKbnyI?t=18m51s) Figuring it out: "sha256" is not a derivation attribute
 - [20:45](https://www.youtube.com/live/x3EDiAKbnyI?t=20m45s) We can't use override either
 - [21:59](https://www.youtube.com/live/x3EDiAKbnyI?t=21m59s) Overriding "outputHash" using "overrideAttrs"
 - [22:47](https://www.youtube.com/live/x3EDiAKbnyI?t=22m47s) Clarification about difference between similar problems
 - [24:51](https://www.youtube.com/live/x3EDiAKbnyI?t=24m51s) How overriding sha256 with overrideAttrs could work more nicely
 - [26:58](https://www.youtube.com/live/x3EDiAKbnyI?t=26m58s) Conclusion about source overriding
 - [28:50](https://www.youtube.com/live/x3EDiAKbnyI?t=28m50s) SRI hashes and the "hash" fetcher argument
 - [31:09](https://www.youtube.com/live/x3EDiAKbnyI?t=31m09s) "flat" file hashes
 - [34:04](https://www.youtube.com/live/x3EDiAKbnyI?t=34m04s) "recursive" NAR hashes
 - [39:38](https://www.youtube.com/live/x3EDiAKbnyI?t=39m38s) Conclusion "flat" vs "recursive" hashing
 - [40:43](https://www.youtube.com/live/x3EDiAKbnyI?t=40m43s) Why fetchFromGitHub uses "recursive" hashing
 - [43:14](https://www.youtube.com/live/x3EDiAKbnyI?t=43m14s) What changes is the NAR archive format sensitive to?
 - [45:42](https://www.youtube.com/live/x3EDiAKbnyI?t=45m42s) Sharing derivations using nix-store --export and --import and some other useful flags
 - [52:40](https://www.youtube.com/live/x3EDiAKbnyI?t=52m40s) Deleting store paths, nix-store --roots and garbage collection
 - [54:41](https://www.youtube.com/live/x3EDiAKbnyI?t=54m41s) Outro



## The Nix Hour #3 [flake updating, nix edit, some corners of the Nix language]

 - [00:00](https://www.youtube.com/live/_OBcPLnyNag?t=00m00s) Updating a single flake input and conventions around updating flake.lock
 - [05:39](https://www.youtube.com/live/_OBcPLnyNag?t=05m39s) nix edit and how it works
 - [12:54](https://www.youtube.com/live/_OBcPLnyNag?t=12m54s) Creating a simple package in nixpkgs
 - [19:58](https://www.youtube.com/live/_OBcPLnyNag?t=19m58s) Using nix edit on the new package and trying to cause a bug
 - [23:42](https://www.youtube.com/live/_OBcPLnyNag?t=23m42s) Quirks with paths in Nix
 - [28:40](https://www.youtube.com/live/_OBcPLnyNag?t=28m40s) Reading files and directories in Nix
 - [30:35](https://www.youtube.com/live/_OBcPLnyNag?t=30m35s) Serializers and deserializers in Nix
 - [39:33](https://www.youtube.com/live/_OBcPLnyNag?t=39m33s) Whether auto-importing is a good thing
 - [41:20](https://www.youtube.com/live/_OBcPLnyNag?t=41m20s) File access restrictions in Flakes
 - [42:44](https://www.youtube.com/live/_OBcPLnyNag?t=42m44s) builtins.storePath
 - [46:18](https://www.youtube.com/live/_OBcPLnyNag?t=46m18s) About string context, how to view and manipulate it



## The Nix Hour #4 [comparing flakes to traditional Nix]

 - [00:00](https://www.youtube.com/live/atmoYyBAhF4?t=00m00s) To adopt or not to adopt Nix Flakes in your company
 - [05:38](https://www.youtube.com/live/atmoYyBAhF4?t=05m38s) Default evaluation purity in Flakes
 - [10:31](https://www.youtube.com/live/atmoYyBAhF4?t=10m31s) Avoiding impurities in stable Nix
 - [16:12](https://www.youtube.com/live/atmoYyBAhF4?t=16m12s) Overriding the system in stable Nix
 - [17:43](https://www.youtube.com/live/atmoYyBAhF4?t=17m43s) Enabling pure evaluation without Flakes
 - [23:37](https://www.youtube.com/live/atmoYyBAhF4?t=23m37s) Overriding nixpkgs in Flakes
 - [24:46](https://www.youtube.com/live/atmoYyBAhF4?t=24m46s) Overriding nixpkgs in stable Nix
 - [28:44](https://www.youtube.com/live/atmoYyBAhF4?t=28m44s) Updating the pinned nixpkgs in Flakes
 - [29:53](https://www.youtube.com/live/atmoYyBAhF4?t=29m53s) Updating the pinned nixpkgs in Nix
 - [30:49](https://www.youtube.com/live/atmoYyBAhF4?t=30m49s) Using niv to manage sources
 - [35:17](https://www.youtube.com/live/atmoYyBAhF4?t=35m17s) Flakes manages inputs recursively
 - [36:51](https://www.youtube.com/live/atmoYyBAhF4?t=36m51s) Flakes has an output schema
 - [37:34](https://www.youtube.com/live/atmoYyBAhF4?t=37m34s) Discovering attributes in stable Nix
 - [40:32](https://www.youtube.com/live/atmoYyBAhF4?t=40m32s) niv doesn't manage sources recursively
 - [42:35](https://www.youtube.com/live/atmoYyBAhF4?t=42m35s) Using follows in Flakes to reproduce the failure
 - [43:31](https://www.youtube.com/live/atmoYyBAhF4?t=43m31s) Manually pinning the recursive nixpkgs with niv
 - [46:40](https://www.youtube.com/live/atmoYyBAhF4?t=46m40s) Problem with many nixpkgs versions in Flakes
 - [50:21](https://www.youtube.com/live/atmoYyBAhF4?t=50m21s) Recommendations for 2nix tooling



## The Nix Hour #5 [overriding a rust source, derivation internally, closure inspection]

 - [00:00](https://www.youtube.com/live/gqrdaB9nITk?t=00m00s) Overriding the source of a Rust package in an overlay
 - [05:50](https://www.youtube.com/live/gqrdaB9nITk?t=05m50s) Impure overlay locations
 - [06:49](https://www.youtube.com/live/gqrdaB9nITk?t=06m49s) Not providing a hash to different fetchers
 - [11:53](https://www.youtube.com/live/gqrdaB9nITk?t=11m53s) Providing the overlay on the CLI instead of impurely
 - [13:44](https://www.youtube.com/live/gqrdaB9nITk?t=13m44s) Discussion about derivation names
 - [15:02](https://www.youtube.com/live/gqrdaB9nITk?t=15m02s) Looking how buildRustPackage is implemented and figuring out how to override the dependency hash
 - [19:30](https://www.youtube.com/live/gqrdaB9nITk?t=19m30s) Actually overriding the dependency hash
 - [21:18](https://www.youtube.com/live/gqrdaB9nITk?t=21m18s) Discussion on whether the name matters for fixed-output derivation caching
 - [23:02](https://www.youtube.com/live/gqrdaB9nITk?t=23m02s) Looking at the Nix store database directly with sqlite
 - [23:59](https://www.youtube.com/live/gqrdaB9nITk?t=23m59s) Checking discourse for how to override rust packages dependency hashes
 - [25:05](https://www.youtube.com/live/gqrdaB9nITk?t=25m05s) Why outputHash?
 - [28:34](https://www.youtube.com/live/gqrdaB9nITk?t=28m34s) Asking for questionsA
 - [30:15](https://www.youtube.com/live/gqrdaB9nITk?t=30m15s) Inspecting derivation attributes
 - [33:16](https://www.youtube.com/live/gqrdaB9nITk?t=33m16s) The derivation primitive
 - [36:37](https://www.youtube.com/live/gqrdaB9nITk?t=36m37s) The derivationStrict primitive underneath the derivation primitive
 - [38:18](https://www.youtube.com/live/gqrdaB9nITk?t=38m18s) Nix repl requirements for a derivation
 - [39:52](https://www.youtube.com/live/gqrdaB9nITk?t=39m52s) Why derivation attributes aren't needed to build derivations
 - [44:10](https://www.youtube.com/live/gqrdaB9nITk?t=44m10s) Derivation inputs
 - [45:20](https://www.youtube.com/live/gqrdaB9nITk?t=45m20s) Inspecting build-time dependencies of derivations
 - [47:07](https://www.youtube.com/live/gqrdaB9nITk?t=47m07s) Finding the derivation for a store path using nix-store --query --deriver
 - [49:20](https://www.youtube.com/live/gqrdaB9nITk?t=49m20s) Subpar explanation of some GC related nix.conf options
 - [52:12](https://www.youtube.com/live/gqrdaB9nITk?t=52m12s) Manually replicating Nix's grepping for runtime dependencies
 - [55:38](https://www.youtube.com/live/gqrdaB9nITk?t=55m38s) Looking at references schema in the Nix database
 - [56:02](https://www.youtube.com/live/gqrdaB9nITk?t=56m02s) Looking at the GC related options again and some recommendations



## The Nix Hour #6 [closure size debugging]

 - [00:00](https://www.youtube.com/live/U_DVlJHwyA4?t=00m00s) Finding a good package to demonstrate disallowedReferences
 - [04:00](https://www.youtube.com/live/U_DVlJHwyA4?t=04m00s) Looking up historical build times and closure sizes on Hydra
 - [07:46](https://www.youtube.com/live/U_DVlJHwyA4?t=07m46s) disallowedReferences and allowedReferences and related attributes in the manual
 - [10:16](https://www.youtube.com/live/U_DVlJHwyA4?t=10m16s) Triggering the disallowedReferences error
 - [10:54](https://www.youtube.com/live/U_DVlJHwyA4?t=10m54s) allowedReferences demo using nix-store --query
 - [16:00](https://www.youtube.com/live/U_DVlJHwyA4?t=16m00s) "Accidentally" adding a C compiler to the result
 - [17:08](https://www.youtube.com/live/U_DVlJHwyA4?t=17m08s) Querying the closure size with nix path-info -S
 - [19:33](https://www.youtube.com/live/U_DVlJHwyA4?t=19m33s) nix why-depends
 - [24:10](https://www.youtube.com/live/U_DVlJHwyA4?t=24m10s) nix why-depends with flake references
 - [26:21](https://www.youtube.com/live/U_DVlJHwyA4?t=26m21s) Best practices around using allowedReferences and co.
 - [32:43](https://www.youtube.com/live/U_DVlJHwyA4?t=32m43s) (meta) Future GitHub issue tracker for Nix Hour questions
 - [33:40](https://www.youtube.com/live/U_DVlJHwyA4?t=33m40s) Forcefully preventing dependencies with removeReferencesTo
 - [37:15](https://www.youtube.com/live/U_DVlJHwyA4?t=37m15s) Gracefully preventing dependencies by changing relevant Nix expressions
 - [45:40](https://www.youtube.com/live/U_DVlJHwyA4?t=45m40s) How runtime dependencies in Nix work



## The Nix Hour #7 [source filtering, writing package tests]

 - [00:00](https://www.youtube.com/live/mOQI9Iiu4Uc?t=00m00s) Intro and updates
 - [02:19](https://www.youtube.com/live/mOQI9Iiu4Uc?t=02m19s) Implicit importing into the store from path values
 - [04:36](https://www.youtube.com/live/mOQI9Iiu4Uc?t=04m36s) result symlink being included in the source
 - [05:53](https://www.youtube.com/live/mOQI9Iiu4Uc?t=05m53s) Filtering result using builtins.path
 - [10:46](https://www.youtube.com/live/mOQI9Iiu4Uc?t=10m46s) Debugging the filtering not working
 - [13:50](https://www.youtube.com/live/mOQI9Iiu4Uc?t=13m50s) lib.cleanSource
 - [16:41](https://www.youtube.com/live/mOQI9Iiu4Uc?t=16m41s) Composing cleanSource and lib.sourceFilesBySuffices
 - [19:30](https://www.youtube.com/live/mOQI9Iiu4Uc?t=19m30s) Could comparisons error for different types?
 - [20:45](https://www.youtube.com/live/mOQI9Iiu4Uc?t=20m45s) Tracing source filtering with lib.sources.trace
 - [21:40](https://www.youtube.com/live/mOQI9Iiu4Uc?t=21m40s) Link between two builtin and nixpkgs source filtering
 - [26:00](https://www.youtube.com/live/mOQI9Iiu4Uc?t=26m00s) Using gitignore.nix
 - [29:36](https://www.youtube.com/live/mOQI9Iiu4Uc?t=29m36s) Filtering multiple result symlinks
 - [33:33](https://www.youtube.com/live/mOQI9Iiu4Uc?t=33m33s) Importing single files into the store
 - [34:24](https://www.youtube.com/live/mOQI9Iiu4Uc?t=34m24s) Interlude, topic switch
 - [35:46](https://www.youtube.com/live/mOQI9Iiu4Uc?t=35m46s) Default mkDerivation check phases
 - [39:28](https://www.youtube.com/live/mOQI9Iiu4Uc?t=39m28s) pythonPackages' checkPhase is installCheckPhase
 - [40:41](https://www.youtube.com/live/mOQI9Iiu4Uc?t=40m41s) Testing with a separate derivation
 - [42:45](https://www.youtube.com/live/mOQI9Iiu4Uc?t=42m45s) NixOS tests associated to nixpkgs packages
 - [44:37](https://www.youtube.com/live/mOQI9Iiu4Uc?t=44m37s) Writing your own NixOS tests
 - [47:59](https://www.youtube.com/live/mOQI9Iiu4Uc?t=47m59s) Writing a NixOS test script
 - [52:28](https://www.youtube.com/live/mOQI9Iiu4Uc?t=52m28s) Debugging some error
 - [53:52](https://www.youtube.com/live/mOQI9Iiu4Uc?t=53m52s) Default KVM requirement for NixOS tests
 - [54:44](https://www.youtube.com/live/mOQI9Iiu4Uc?t=54m44s) Using finalPackage for consistency with overrides
 - [58:00](https://www.youtube.com/live/mOQI9Iiu4Uc?t=58m00s) Outro



## The Nix Hour #8 [debugging package failures, package file indices]

 - [00:00](https://www.youtube.com/live/cfCqauM9ztM?t=00m00s) Intro: Looking at a breakage introduced with a new release
 - [03:50](https://www.youtube.com/live/cfCqauM9ztM?t=03m50s) Git bisect: Finding a broken package for demonstration
 - [05:41](https://www.youtube.com/live/cfCqauM9ztM?t=05m41s) Interlude: Difference between nixos- and release- branches
 - [06:32](https://www.youtube.com/live/cfCqauM9ztM?t=06m32s) Finding a good and a bad commit for bisection
 - [08:21](https://www.youtube.com/live/cfCqauM9ztM?t=08m21s) Starting the bisection
 - [10:02](https://www.youtube.com/live/cfCqauM9ztM?t=10m02s) Faster build checks using nix-build-uncached
 - [11:24](https://www.youtube.com/live/cfCqauM9ztM?t=11m24s) Automating the bisection
 - [12:17](https://www.youtube.com/live/cfCqauM9ztM?t=12m17s) Question about testing things outside of nixpkgs/NixOS systems
 - [13:43](https://www.youtube.com/live/cfCqauM9ztM?t=13m43s) Skipping a commit in case it needs to rebuild too many things
 - [14:08](https://www.youtube.com/live/cfCqauM9ztM?t=14m08s) Looking up the PR for a commit once bisection finished
 - [15:16](https://www.youtube.com/live/cfCqauM9ztM?t=15m16s) Building a NixOS VM from a configuration.nix file
 - [18:42](https://www.youtube.com/live/cfCqauM9ztM?t=18m42s) Making the VM to run in the terminal
 - [22:25](https://www.youtube.com/live/cfCqauM9ztM?t=22m25s) Creating an auto-logged in user for the VM
 - [26:28](https://www.youtube.com/live/cfCqauM9ztM?t=26m28s) How to test hardware-dependent packages
 - [28:31](https://www.youtube.com/live/cfCqauM9ztM?t=28m31s) patchelf and autoPatchelfHook
 - [31:27](https://www.youtube.com/live/cfCqauM9ztM?t=31m27s) Picking the right packages for patchelf
 - [35:23](https://www.youtube.com/live/cfCqauM9ztM?t=35m23s) Using nix-index for finding packages containing specific files
 - [38:13](https://www.youtube.com/live/cfCqauM9ztM?t=38m13s) Using nix-index-database to get a prebuilt index
 - [41:09](https://www.youtube.com/live/cfCqauM9ztM?t=41m09s) Finding libasound.so.2 using nix-index
 - [42:39](https://www.youtube.com/live/cfCqauM9ztM?t=42m39s) Nixpkgs aliases and nixpkgs CI
 - [44:45](https://www.youtube.com/live/cfCqauM9ztM?t=44m45s) nix-index command-not-found shell integration
 - [45:51](https://www.youtube.com/live/cfCqauM9ztM?t=45m51s) Interpolating a Nix package into a shell command
 - [47:49](https://www.youtube.com/live/cfCqauM9ztM?t=47m49s) comma command
 - [50:18](https://www.youtube.com/live/cfCqauM9ztM?t=50m18s) Trying to explain NixOS' command-not-found module, but mislead slightly
 - [53:05](https://www.youtube.com/live/cfCqauM9ztM?t=53m05s) programs.sqlite in Hydra channels
 - [56:10](https://www.youtube.com/live/cfCqauM9ztM?t=56m10s) Impurities in NixOS
 - [58:57](https://www.youtube.com/live/cfCqauM9ztM?t=58m57s) Website to check which channel has which PR included



## The Nix Hour #9 [packaging and upstreaming to nixpkgs]

 - [00:00](https://www.youtube.com/live/VpUHb-GagBE?t=00m00s) Context and running fluentd in a VM
 - [02:22](https://www.youtube.com/live/VpUHb-GagBE?t=02m22s) Figuring out how to package fluentd plugins
 - [05:15](https://www.youtube.com/live/VpUHb-GagBE?t=05m15s) Nixpkgs update scripts
 - [08:55](https://www.youtube.com/live/VpUHb-GagBE?t=08m55s) Adding a fluentd plugin
 - [09:54](https://www.youtube.com/live/VpUHb-GagBE?t=09m54s) Figuring out how to use fluentd plugins
 - [14:11](https://www.youtube.com/live/VpUHb-GagBE?t=14m11s) Improved Nix build output with nix-output-monitor
 - [15:35](https://www.youtube.com/live/VpUHb-GagBE?t=15m35s) Checking if the plugin config works
 - [17:19](https://www.youtube.com/live/VpUHb-GagBE?t=17m19s) Committing changes for nixpkgs contribution
 - [20:54](https://www.youtube.com/live/VpUHb-GagBE?t=20m54s) Using the GitHub CLI to fork nixpkgs
 - [23:08](https://www.youtube.com/live/VpUHb-GagBE?t=23m08s) Pushing the commit and rebasing on master
 - [25:00](https://www.youtube.com/live/VpUHb-GagBE?t=25m00s) Looking at the PR template
 - [31:17](https://www.youtube.com/live/VpUHb-GagBE?t=31m17s) Discovering that the service fails to run now
 - [31:36](https://www.youtube.com/live/VpUHb-GagBE?t=31m36s) Changing the VM terminal dimensions manually
 - [32:49](https://www.youtube.com/live/VpUHb-GagBE?t=32m49s) Figuring out how to fix the failure
 - [37:26](https://www.youtube.com/live/VpUHb-GagBE?t=37m26s) Updating the PR with the fixes
 - [40:09](https://www.youtube.com/live/VpUHb-GagBE?t=40m09s) Continuing filling out the PR template
 - [41:04](https://www.youtube.com/live/VpUHb-GagBE?t=41m04s) Linking the NixOS test to the package
 - [44:06](https://www.youtube.com/live/VpUHb-GagBE?t=44m06s) Checking if somebody else already made this change
 - [46:17](https://www.youtube.com/live/VpUHb-GagBE?t=46m17s) Looking at how the update script runner is implemented



## The Nix Hour #10 [packaging binaries, reviewing a PR]

 - [00:26](https://www.youtube.com/live/QUnJ9q3Np7I?t=00m26s) Question: How to packaging downloadable binaries
 - [04:06](https://www.youtube.com/live/QUnJ9q3Np7I?t=04m06s) Brief look at patchelf
 - [05:03](https://www.youtube.com/live/QUnJ9q3Np7I?t=05m03s) Trying to package a shellcheck binary download
 - [06:30](https://www.youtube.com/live/QUnJ9q3Np7I?t=06m30s) Fetchers probably don't use SSL
 - [08:15](https://www.youtube.com/live/QUnJ9q3Np7I?t=08m15s) Continuing packaging shellcheck
 - [10:33](https://www.youtube.com/live/QUnJ9q3Np7I?t=10m33s) Fetching archives using fetchzip
 - [11:34](https://www.youtube.com/live/QUnJ9q3Np7I?t=11m34s) Moving the source for installation
 - [13:02](https://www.youtube.com/live/QUnJ9q3Np7I?t=13m02s) Finishing and testing the result
 - [14:39](https://www.youtube.com/live/QUnJ9q3Np7I?t=14m39s) Problem with the function-style mkDerivation
 - [20:01](https://www.youtube.com/live/QUnJ9q3Np7I?t=20m01s) Question: What do primes ' in Nix functions names do?
 - [23:19](https://www.youtube.com/live/QUnJ9q3Np7I?t=23m19s) Taking a look at a PR
 - [25:07](https://www.youtube.com/live/QUnJ9q3Np7I?t=25m07s) Adding a maintainer
 - [27:11](https://www.youtube.com/live/QUnJ9q3Np7I?t=27m11s) General look at the PR
 - [28:33](https://www.youtube.com/live/QUnJ9q3Np7I?t=28m33s) Checking out the PR branch and building it locally
 - [30:22](https://www.youtube.com/live/QUnJ9q3Np7I?t=30m22s) How to manually trigger Nixpkgs CI
 - [34:19](https://www.youtube.com/live/QUnJ9q3Np7I?t=34m19s) Building 32-bit packages
 - [36:31](https://www.youtube.com/live/QUnJ9q3Np7I?t=36m31s) Making sure that packages are tested
 - [38:13](https://www.youtube.com/live/QUnJ9q3Np7I?t=38m13s) Basic package checks for security
 - [40:31](https://www.youtube.com/live/QUnJ9q3Np7I?t=40m31s) Understanding the code and potential refactors
 - [50:24](https://www.youtube.com/live/QUnJ9q3Np7I?t=50m24s) Implementing and suggesting a simple refactoring



## The Nix Hour #11 [nix-shell, mkShell, shell.nix, flakes]

 - [00:28](https://www.youtube.com/live/_8DS6IqqrBA?t=00m28s) nix-build and nix-shell overview
 - [03:53](https://www.youtube.com/live/_8DS6IqqrBA?t=03m53s) How to run custom phases in a nix-shell
 - [08:48](https://www.youtube.com/live/_8DS6IqqrBA?t=08m48s) Trying to build hello in nix-shell
 - [11:03](https://www.youtube.com/live/_8DS6IqqrBA?t=11m03s) Using hooks to customize phases
 - [13:18](https://www.youtube.com/live/_8DS6IqqrBA?t=13m18s) Default files, default.nix vs shell.nix
 - [14:59](https://www.youtube.com/live/_8DS6IqqrBA?t=14m59s) Basic mkShell
 - [17:07](https://www.youtube.com/live/_8DS6IqqrBA?t=17m07s) Inconsistencies between default.nix and shell.nix
 - [19:48](https://www.youtube.com/live/_8DS6IqqrBA?t=19m48s) Recommendation to have consistency, and mkShell's inputsFrom
 - [25:20](https://www.youtube.com/live/_8DS6IqqrBA?t=25m20s) shellHook and its uses
 - [31:05](https://www.youtube.com/live/_8DS6IqqrBA?t=31m05s) Combining multiple shells using inputsFrom
 - [33:43](https://www.youtube.com/live/_8DS6IqqrBA?t=33m43s) Question: Is there a builtin way to expose a shell for a derivation?
 - [36:22](https://www.youtube.com/live/_8DS6IqqrBA?t=36m22s) mkShell packages argument
 - [39:49](https://www.youtube.com/live/_8DS6IqqrBA?t=39m49s) Building and pushing all shell dependencies to a cache
 - [42:53](https://www.youtube.com/live/_8DS6IqqrBA?t=42m53s) Setting up a backwards-compatible Flake
 - [49:00](https://www.youtube.com/live/_8DS6IqqrBA?t=49m00s) Reusing the flake-locked nixpkgs for the traditional Nix
 - [53:29](https://www.youtube.com/live/_8DS6IqqrBA?t=53m29s) Formatting with alejandra and nix fmt
 - [55:16](https://www.youtube.com/live/_8DS6IqqrBA?t=55m16s) Question: How to install from flakes
 - [56:30](https://www.youtube.com/live/_8DS6IqqrBA?t=56m30s) nix-shell as a shebang man page



## The Nix Hour #12 [purity at eval-, build- and runtime]

 - [00:00](https://www.youtube.com/live/96jCLfKAa5M?t=00m00s) Intro
 - [01:13](https://www.youtube.com/live/96jCLfKAa5M?t=01m13s) Purity of Nix overview
 - [02:16](https://www.youtube.com/live/96jCLfKAa5M?t=02m16s) Nix language evaluation purity
 - [04:36](https://www.youtube.com/live/96jCLfKAa5M?t=04m36s) Demonstrating evaluation impurities
 - [06:58](https://www.youtube.com/live/96jCLfKAa5M?t=06m58s) Repository is the flake evaluation input
 - [11:43](https://www.youtube.com/live/96jCLfKAa5M?t=11m43s) CLI is the --pure-eval input
 - [15:13](https://www.youtube.com/live/96jCLfKAa5M?t=15m13s) Derivation building purity
 - [18:28](https://www.youtube.com/live/96jCLfKAa5M?t=18m28s) Demonstrating building impurities
 - [21:12](https://www.youtube.com/live/96jCLfKAa5M?t=21m12s) Hacky way of forcing rebuilds every time
 - [24:11](https://www.youtube.com/live/96jCLfKAa5M?t=24m11s) Testing the sandbox and disabling it
 - [29:05](https://www.youtube.com/live/96jCLfKAa5M?t=29m05s) Only disabling the sandbox for specific derivations
 - [30:47](https://www.youtube.com/live/96jCLfKAa5M?t=30m47s) Build randomness
 - [31:59](https://www.youtube.com/live/96jCLfKAa5M?t=31m59s) Why building is not fully pure even with the sandbox
 - [34:34](https://www.youtube.com/live/96jCLfKAa5M?t=34m34s) Relation to reproducibility
 - [40:24](https://www.youtube.com/live/96jCLfKAa5M?t=40m24s) Relation to content-addressed derivations
 - [41:36](https://www.youtube.com/live/96jCLfKAa5M?t=41m36s) Build result runtime purity
 - [47:27](https://www.youtube.com/live/96jCLfKAa5M?t=47m27s) Nix code to improve runtime purity
 - [52:51](https://www.youtube.com/live/96jCLfKAa5M?t=52m51s) Runtime purity comes from Nix code, not Nix itself
 - [53:46](https://www.youtube.com/live/96jCLfKAa5M?t=53m46s) Purity level conclusion



## The Nix Hour #13 [nixpkgs entry-point and structure, derivation string coercion]

 - [00:00](https://www.youtube.com/live/Vca3meCWaLo?t=00m00s) Intro and question
 - [01:24](https://www.youtube.com/live/Vca3meCWaLo?t=01m24s) Nixpkgs entry point and how to get the top-level value
 - [04:01](https://www.youtube.com/live/Vca3meCWaLo?t=04m01s) From default.nix over internal overlays to all-packages.nix
 - [11:52](https://www.youtube.com/live/Vca3meCWaLo?t=11m52s) Package definitions their (non-)structure in all-packages.nix
 - [19:11](https://www.youtube.com/live/Vca3meCWaLo?t=19m11s) Rough directory categorization
 - [20:19](https://www.youtube.com/live/Vca3meCWaLo?t=20m19s) Querying attribute position using builtins.unsafeGetAttrPos
 - [22:51](https://www.youtube.com/live/Vca3meCWaLo?t=22m51s) Disallowing alias use and demonstration
 - [26:01](https://www.youtube.com/live/Vca3meCWaLo?t=26m01s) CLI function auto-calling
 - [30:30](https://www.youtube.com/live/Vca3meCWaLo?t=30m30s) Passing arguments to Nix expressions from the CLI
 - [32:00](https://www.youtube.com/live/Vca3meCWaLo?t=32m00s) Continuing disallowing alias demonstration
 - [33:43](https://www.youtube.com/live/Vca3meCWaLo?t=33m43s) Trying to find the definition of stdenv.mkDerivation by definition (but then giving up and jumping to it directly)
 - [38:12](https://www.youtube.com/live/Vca3meCWaLo?t=38m12s) Looking at some mkDerivation arguments
 - [40:47](https://www.youtube.com/live/Vca3meCWaLo?t=40m47s) How meta.position works
 - [43:06](https://www.youtube.com/live/Vca3meCWaLo?t=43m06s) mkDerivation attribute string coercion into environment variables
 - [47:00](https://www.youtube.com/live/Vca3meCWaLo?t=47m00s) List to string coercion
 - [50:25](https://www.youtube.com/live/Vca3meCWaLo?t=50m25s) Using structured attributes



## The Nix Hour #14 [updateScripts, nixpkgs-update, nixpkgs-review, nix-env -qa, passthru.tests]

 - [00:00](https://www.youtube.com/live/fd11ihDmPNc?t=00m00s) Intro
 - [01:23](https://www.youtube.com/live/fd11ihDmPNc?t=01m23s) Looking at a @r-ryantm nixpkgs-update PR
 - [04:38](https://www.youtube.com/live/fd11ihDmPNc?t=04m38s) Looking at nixpkgs-review
 - [07:20](https://www.youtube.com/live/fd11ihDmPNc?t=07m20s) Listing packages with nix-env
 - [13:22](https://www.youtube.com/live/fd11ihDmPNc?t=13m22s) Listing a nested package set with nix-env using recurseIntoAttrs
 - [14:22](https://www.youtube.com/live/fd11ihDmPNc?t=14m22s) Future me: It's because pythonPackages.requests fails to evaluate
 - [14:55](https://www.youtube.com/live/fd11ihDmPNc?t=14m55s) Package sets in nixpkgs being built by Hydra
 - [16:22](https://www.youtube.com/live/fd11ihDmPNc?t=16m22s) Back to nixpkgs-review
 - [18:00](https://www.youtube.com/live/fd11ihDmPNc?t=18m00s) Why the nixpkgs-review shell has a special case for more than 50 packages
 - [20:40](https://www.youtube.com/live/fd11ihDmPNc?t=20m40s) How buildEnv works around the argument length restriction
 - [22:36](https://www.youtube.com/live/fd11ihDmPNc?t=22m36s) Brief look at nixpkgs-update docs
 - [23:20](https://www.youtube.com/live/fd11ihDmPNc?t=23m20s) Looking at Repology 
 - [25:20](https://www.youtube.com/live/fd11ihDmPNc?t=25m20s) Back to nixpkgs-update docs
 - [25:57](https://www.youtube.com/live/fd11ihDmPNc?t=25m57s) Why nixpkg staging exists
 - [28:40](https://www.youtube.com/live/fd11ihDmPNc?t=28m40s) Mistake: I also stashed away the setup.sh script, these are only paths that are fetched
 - [29:00](https://www.youtube.com/live/fd11ihDmPNc?t=29m00s) Rebuild count labels in nixpkgs
 - [31:29](https://www.youtube.com/live/fd11ihDmPNc?t=31m29s) Back to nixpkgs-update docs
 - [31:58](https://www.youtube.com/live/fd11ihDmPNc?t=31m58s) Looking and running updateScript's
 - [36:05](https://www.youtube.com/live/fd11ihDmPNc?t=36m05s) Functions and tooling to for defining updateScript's
 - [39:30](https://www.youtube.com/live/fd11ihDmPNc?t=39m30s) Recommendation: Don't generate Nix, instead generate JSON and import that from Nix
 - [40:34](https://www.youtube.com/live/fd11ihDmPNc?t=40m34s) nixpkgs-update vs nix-update
 - [41:59](https://www.youtube.com/live/fd11ihDmPNc?t=41m59s) Updating multiple hashes using update scripts? cargoSha256?
 - [46:50](https://www.youtube.com/live/fd11ihDmPNc?t=46m50s) Hacky replacement of hashes in Nix source
 - [49:23](https://www.youtube.com/live/fd11ihDmPNc?t=49m23s) passthru.tests in CI and the documentation
 - [52:07](https://www.youtube.com/live/fd11ihDmPNc?t=52m07s) testers.testVersion and other testers.*



## The Nix Hour #15 [multi-lang packages, FOD locking, stdenv bootstrapping]

 - [00:00](https://www.youtube.com/live/pTY27vxIXiY?t=00m00s) Intro
 - [00:30](https://www.youtube.com/live/pTY27vxIXiY?t=00m30s) Question: Packaging multi-language packages (Go + Python here)
 - [04:14](https://www.youtube.com/live/pTY27vxIXiY?t=04m14s) Looking at an example in nixpkgs
 - [06:31](https://www.youtube.com/live/pTY27vxIXiY?t=06m31s) How builders are implemented underneath, can be reproduced independently
 - [13:05](https://www.youtube.com/live/pTY27vxIXiY?t=13m05s) Using fixed-output derivations to get network access for arbitrary derivations
 - [17:37](https://www.youtube.com/live/pTY27vxIXiY?t=17m37s) High-level conclusion for the question
 - [18:55](https://www.youtube.com/live/pTY27vxIXiY?t=18m55s) Recommendation: Lock fetches individually
 - [23:37](https://www.youtube.com/live/pTY27vxIXiY?t=23m37s) Brief mention of dream2nix
 - [25:39](https://www.youtube.com/live/pTY27vxIXiY?t=25m39s) What is stdenv and why does it need to be bootstrapped
 - [28:07](https://www.youtube.com/live/pTY27vxIXiY?t=28m07s) YouTube question: How to get auto-completion in ZSH 
 - [28:48](https://www.youtube.com/live/pTY27vxIXiY?t=28m48s) Looking at the stdenv entrypoint
 - [29:54](https://www.youtube.com/live/pTY27vxIXiY?t=29m54s) Bootstrap files definition
 - [32:56](https://www.youtube.com/live/pTY27vxIXiY?t=32m56s) How bootstrap files are built
 - [34:16](https://www.youtube.com/live/pTY27vxIXiY?t=34m16s) What the bootstrap files contain
 - [36:15](https://www.youtube.com/live/pTY27vxIXiY?t=36m15s) Trying to find the stdenv bootstrapping stages
 - [37:48](https://www.youtube.com/live/pTY27vxIXiY?t=37m48s) Rough overview of how stdenv bootstrapping stages work
 - [43:53](https://www.youtube.com/live/pTY27vxIXiY?t=43m53s) Looking at dependencies of the incremental stdenv bootstrapping stages
 - [46:16](https://www.youtube.com/live/pTY27vxIXiY?t=46m16s) Alternate and simpler bootstrapping project
 - [50:12](https://www.youtube.com/live/pTY27vxIXiY?t=50m12s) Remembering the now-removed nix/config.nix
 - [51:04](https://www.youtube.com/live/pTY27vxIXiY?t=51m04s) Bootstrapping Nix itself and conclusion



## The Nix Hour #16 [parametrized module system options]

 - [00:00](https://www.youtube.com/live/lO0x0Kk9wTM?t=00m00s) Intro and looking at the question
 - [01:17](https://www.youtube.com/live/lO0x0Kk9wTM?t=01m17s) How users.extraUsers is defined and why it exists alongside users.users
 - [10:02](https://www.youtube.com/live/lO0x0Kk9wTM?t=10m02s) Why double users.users
 - [11:00](https://www.youtube.com/live/lO0x0Kk9wTM?t=11m00s) Declaring, defining and using your own module system options
 - [17:32](https://www.youtube.com/live/lO0x0Kk9wTM?t=17m32s) The attrsOf option type
 - [22:29](https://www.youtube.com/live/lO0x0Kk9wTM?t=22m29s) The submodule option type
 - [31:05](https://www.youtube.com/live/lO0x0Kk9wTM?t=31m05s) Problem with declaring options in submodule definitions
 - [34:10](https://www.youtube.com/live/lO0x0Kk9wTM?t=34m10s) Looking at the option type documentation
 - [35:24](https://www.youtube.com/live/lO0x0Kk9wTM?t=35m24s) The useful pattern of combining attrsOf and submodule
 - [42:48](https://www.youtube.com/live/lO0x0Kk9wTM?t=42m48s) Accessing the attribute name in the submodule
 - [44:52](https://www.youtube.com/live/lO0x0Kk9wTM?t=44m52s) Parametrized options in the manual
 - [47:12](https://www.youtube.com/live/lO0x0Kk9wTM?t=47m12s) Extending parametrized options, merging types
 - [52:28](https://www.youtube.com/live/lO0x0Kk9wTM?t=52m28s) Implementing extended parametrized option behavior
 - [54:12](https://www.youtube.com/live/lO0x0Kk9wTM?t=54m12s) Trying to build the system, takes too long though
 - [56:00](https://www.youtube.com/live/lO0x0Kk9wTM?t=56m00s) Recommendation: Use attrsOf instead of listOf for improved overridability



## The Nix Hour #17 [pkgConfigModules, some new lib functions, builder phases]

 - [00:00](https://www.youtube.com/live/9EpgTv21kjo?t=00m00s) Intro
 - [00:48](https://www.youtube.com/live/9EpgTv21kjo?t=00m48s) What's new in Nix YouTube series
 - [02:12](https://www.youtube.com/live/9EpgTv21kjo?t=02m12s) Nixpkgs news: pkgConfigModules
 - [04:02](https://www.youtube.com/live/9EpgTv21kjo?t=04m02s) A brief look at multiple outputs
 - [05:44](https://www.youtube.com/live/9EpgTv21kjo?t=05m44s) Back to pkgConfigModules
 - [06:56](https://www.youtube.com/live/9EpgTv21kjo?t=06m56s) What is pkg-config
 - [09:12](https://www.youtube.com/live/9EpgTv21kjo?t=09m12s) Trying to find the defaultPkgConfigPackages JSON
 - [10:38](https://www.youtube.com/live/9EpgTv21kjo?t=10m38s) Default packages for pkg-config names
 - [11:31](https://www.youtube.com/live/9EpgTv21kjo?t=11m31s) pkg-config testers
 - [14:55](https://www.youtube.com/live/9EpgTv21kjo?t=14m55s) Use-cases for the pkg-config default package listing
 - [15:28](https://www.youtube.com/live/9EpgTv21kjo?t=15m28s) Could this tester be added to every derivation?
 - [16:37](https://www.youtube.com/live/9EpgTv21kjo?t=16m37s) It's hard to find significant changes in Nixpkgs
 - [17:11](https://www.youtube.com/live/9EpgTv21kjo?t=17m11s) Benefits of multiple outputs
 - [19:55](https://www.youtube.com/live/9EpgTv21kjo?t=19m55s) Trying to filter package update PR's using labels
 - [21:50](https://www.youtube.com/live/9EpgTv21kjo?t=21m50s) Browser crash, please wait
 - [22:53](https://www.youtube.com/live/9EpgTv21kjo?t=22m53s) lib.path.append
 - [26:51](https://www.youtube.com/live/9EpgTv21kjo?t=26m51s) lib.path.subpath
 - [28:18](https://www.youtube.com/live/9EpgTv21kjo?t=28m18s) Further motivation for path functions
 - [29:08](https://www.youtube.com/live/9EpgTv21kjo?t=29m08s) Looking at lib.replicate and lib.concatLines
 - [30:11](https://www.youtube.com/live/9EpgTv21kjo?t=30m11s) Emails are now optional in the Nixpkgs maintainer listing
 - [31:27](https://www.youtube.com/live/9EpgTv21kjo?t=31m27s) lib.updateManyAttrsByPath
 - [35:30](https://www.youtube.com/live/9EpgTv21kjo?t=35m30s) Interlude
 - [36:34](https://www.youtube.com/live/9EpgTv21kjo?t=36m34s) Unpack phase and default phases
 - [41:04](https://www.youtube.com/live/9EpgTv21kjo?t=41m04s) Why you maybe shouldn't override the default phases
 - [43:24](https://www.youtube.com/live/9EpgTv21kjo?t=43m24s) About emails being optional: People can't be reached privately anymore
 - [44:48](https://www.youtube.com/live/9EpgTv21kjo?t=44m48s) Appending to hooks
 - [47:37](https://www.youtube.com/live/9EpgTv21kjo?t=47m37s) Default actions of phases
 - [48:37](https://www.youtube.com/live/9EpgTv21kjo?t=48m37s) Why multiple phases are needed
 - [50:33](https://www.youtube.com/live/9EpgTv21kjo?t=50m33s) Use cases for additional phases inbetween standard ones
 - [53:01](https://www.youtube.com/live/9EpgTv21kjo?t=53m01s) Do all phases run in the same sandbox?
 - [53:39](https://www.youtube.com/live/9EpgTv21kjo?t=53m39s) Are there different limitations to different phases?
 - [54:47](https://www.youtube.com/live/9EpgTv21kjo?t=54m47s) Fetching from the internet during phases?



## The Nix Hour #18 [fixed-points, makeExtensible, makeScope]

 - [00:00](https://www.youtube.com/live/BgnUFtd1Ivs?t=00m00s) Question: What's callPackage, newScope and makeScope?
 - [01:20](https://www.youtube.com/live/BgnUFtd1Ivs?t=01m20s) A simple interdependent package set using pkgs.callPackage
 - [04:42](https://www.youtube.com/live/BgnUFtd1Ivs?t=04m42s) Using a fixed-point function for less repetition
 - [07:03](https://www.youtube.com/live/BgnUFtd1Ivs?t=07m03s) Making the package set extensible using lib.makeExtensible
 - [12:55](https://www.youtube.com/live/BgnUFtd1Ivs?t=12m55s) Using makeScope and newScope for extending the nixpkgs scope
 - [16:35](https://www.youtube.com/live/BgnUFtd1Ivs?t=16m35s) A potential approach of nesting your own packages to avoid accidental overrides
 - [18:27](https://www.youtube.com/live/BgnUFtd1Ivs?t=18m27s) Changing how the default is passed
 - [19:45](https://www.youtube.com/live/BgnUFtd1Ivs?t=19m45s) Further nesting scopes using makeScope
 - [23:13](https://www.youtube.com/live/BgnUFtd1Ivs?t=23m13s) Cross-compilation with makeScopeWithSplicing
 - [27:21](https://www.youtube.com/live/BgnUFtd1Ivs?t=27m21s) Overlaying using overrideScope, accidentally mixing up the argument ordering
 - [30:49](https://www.youtube.com/live/BgnUFtd1Ivs?t=30m49s) makeScope overview
 - [32:36](https://www.youtube.com/live/BgnUFtd1Ivs?t=32m36s) Question: How to not have all Nixpkgs packages in the callPackage scope?
 - [34:42](https://www.youtube.com/live/BgnUFtd1Ivs?t=34m42s) Using makeExtensible to create a new empty callPackage scope
 - [37:52](https://www.youtube.com/live/BgnUFtd1Ivs?t=37m52s) Using makeScope to create a new empty callPackage scope
 - [42:37](https://www.youtube.com/live/BgnUFtd1Ivs?t=42m37s) Comparing the different scope approaches
 - [45:48](https://www.youtube.com/live/BgnUFtd1Ivs?t=45m48s) Manually evaluating a fixed-point function
 - [52:20](https://www.youtube.com/live/BgnUFtd1Ivs?t=52m20s) Using composeExtensions to compose two extensions into one



## The Nix Hour #19 [module system recursion, config vs config, common infinite recursion causes]

 - [00:00](https://www.youtube.com/live/cZjOzOHb2ow?t=00m00s) Intro
 - [01:57](https://www.youtube.com/live/cZjOzOHb2ow?t=01m57s) From a single fixed-point function to multiple functions
 - [07:59](https://www.youtube.com/live/cZjOzOHb2ow?t=07m59s) How the two config's differ
 - [11:55](https://www.youtube.com/live/cZjOzOHb2ow?t=11m55s) Why the config fixed-point works at all
 - [13:07](https://www.youtube.com/live/cZjOzOHb2ow?t=13m07s) How a simple type merge is implemented
 - [18:22](https://www.youtube.com/live/cZjOzOHb2ow?t=18m22s) Implementing a simple merge operation
 - [21:16](https://www.youtube.com/live/cZjOzOHb2ow?t=21m16s) Calling the merge operation for each attribute
 - [25:54](https://www.youtube.com/live/cZjOzOHb2ow?t=25m54s) Steps towards a complete module system
 - [28:21](https://www.youtube.com/live/cZjOzOHb2ow?t=28m21s) Infinite recursion from imports using config
 - [34:15](https://www.youtube.com/live/cZjOzOHb2ow?t=34m15s) How mkIf avoids infinite recursion
 - [40:03](https://www.youtube.com/live/cZjOzOHb2ow?t=40m03s) The options attribute
 - [42:19](https://www.youtube.com/live/cZjOzOHb2ow?t=42m19s) Using imports or mkMerge to define an option multiple times
 - [45:00](https://www.youtube.com/live/cZjOzOHb2ow?t=45m00s) Infinite recursion from mkMerge
 - [47:51](https://www.youtube.com/live/cZjOzOHb2ow?t=47m51s) Using addErrorContext to add error context
 - [50:29](https://www.youtube.com/live/cZjOzOHb2ow?t=50m29s) Workaround for infinite recursion from mkMerge
 - [54:39](https://www.youtube.com/live/cZjOzOHb2ow?t=54m39s) Outro



## The Nix Hour #20 [nixos tests]

 - [00:00](https://www.youtube.com/live/RgKl8Jue4qM?t=00m00s) Intro and poll for a new time
 - [01:28](https://www.youtube.com/live/RgKl8Jue4qM?t=01m28s) NixOS test declarations in Nixpkgs
 - [05:38](https://www.youtube.com/live/RgKl8Jue4qM?t=05m38s) Basic structure of NixOS tests
 - [06:45](https://www.youtube.com/live/RgKl8Jue4qM?t=06m45s) The testScript and its API
 - [09:39](https://www.youtube.com/live/RgKl8Jue4qM?t=09m39s) Running the tests in Nixpkgs
 - [10:58](https://www.youtube.com/live/RgKl8Jue4qM?t=10m58s) Building the interactive test driver
 - [11:55](https://www.youtube.com/live/RgKl8Jue4qM?t=11m55s) Question: Do the tests use the host's Nix store?
 - [13:47](https://www.youtube.com/live/RgKl8Jue4qM?t=13m47s) Running tests interactively and networking between nodes
 - [16:23](https://www.youtube.com/live/RgKl8Jue4qM?t=16m23s) Creating our own basic NixOS test
 - [24:11](https://www.youtube.com/live/RgKl8Jue4qM?t=24m11s) Looking at some other available options, including extraPythonPackages
 - [25:18](https://www.youtube.com/live/RgKl8Jue4qM?t=25m18s) Logging into the machine interactively
 - [29:00](https://www.youtube.com/live/RgKl8Jue4qM?t=29m00s) Changing the keyboard layout of the machine
 - [30:55](https://www.youtube.com/live/RgKl8Jue4qM?t=30m55s) Taking a screenshot interactively, needs to be an absolute path
 - [36:45](https://www.youtube.com/live/RgKl8Jue4qM?t=36m45s) Taking a screenshot non-interactively, also needs to be an absolute path for some reason
 - [45:44](https://www.youtube.com/live/RgKl8Jue4qM?t=45m44s) system-features, requiredSystemFeatures and kvm being required for NixOS tests
 - [48:41](https://www.youtube.com/live/RgKl8Jue4qM?t=48m41s) Remote builder system-features specification
 - [50:08](https://www.youtube.com/live/RgKl8Jue4qM?t=50m08s) Question: Can custom system features be declared?
 - [51:47](https://www.youtube.com/live/RgKl8Jue4qM?t=51m47s) Temporarily changing a static etc file hackily
 - [53:11](https://www.youtube.com/live/RgKl8Jue4qM?t=53m11s) Setting a custom feature in nix.conf
 - [54:16](https://www.youtube.com/live/RgKl8Jue4qM?t=54m16s) Undoing the temporary file change



## The Nix Hour #21 [linearising PR history, nixus modules, warnings as errors, finding attributes]

 - [00:00](https://www.youtube.com/live/Gj5LrUmDzHM?t=00m00s) Intro, new weekly time
 - [01:08](https://www.youtube.com/live/Gj5LrUmDzHM?t=01m08s) Q: nixpkgs PR with master merged into PR
 - [03:24](https://www.youtube.com/live/Gj5LrUmDzHM?t=03m24s) Trying to remove merge commits with rebase
 - [08:20](https://www.youtube.com/live/Gj5LrUmDzHM?t=08m20s) Cherry picking commits manually
 - [10:37](https://www.youtube.com/live/Gj5LrUmDzHM?t=10m37s) Pushing changes
 - [11:53](https://www.youtube.com/live/Gj5LrUmDzHM?t=11m53s) x10an14's solution for rebase
 - [15:32](https://www.youtube.com/live/Gj5LrUmDzHM?t=15m32s) Q: do you still use nixus?
 - [16:21](https://www.youtube.com/live/Gj5LrUmDzHM?t=16m21s) nixus configuration demonstration
 - [19:11](https://www.youtube.com/live/Gj5LrUmDzHM?t=19m11s) nixus: custom modules
 - [20:14](https://www.youtube.com/live/Gj5LrUmDzHM?t=20m14s) nixus: SSH
 - [21:33](https://www.youtube.com/live/Gj5LrUmDzHM?t=21m33s) Q: nixus and flakes
 - [33:38](https://www.youtube.com/live/Gj5LrUmDzHM?t=33m38s) Track down warning about replaceChars
 - [36:57](https://www.youtube.com/live/Gj5LrUmDzHM?t=36m57s) Issues in nix-hour repository
 - [37:43](https://www.youtube.com/live/Gj5LrUmDzHM?t=37m43s) Q: How to depend on kerberos in nixpkgs
 - [39:06](https://www.youtube.com/live/Gj5LrUmDzHM?t=39m06s) Aliases in nixpkgs
 - [40:38](https://www.youtube.com/live/Gj5LrUmDzHM?t=40m38s) Nix-implementation of attribute typo suggestions
 - [44:32](https://www.youtube.com/live/Gj5LrUmDzHM?t=44m32s) callPackage implementation of the same
 - [45:48](https://www.youtube.com/live/Gj5LrUmDzHM?t=45m48s) Q: How to know where and which files to install
 - [47:44](https://www.youtube.com/live/Gj5LrUmDzHM?t=47m44s) postgresqlTestHook
 - [53:55](https://www.youtube.com/live/Gj5LrUmDzHM?t=53m55s) Q: nixpkgs PR summary and description information
 - [57:40](https://www.youtube.com/live/Gj5LrUmDzHM?t=57m40s) Signoff



## The Nix Hour #22 [nixos-rebuild, switch-to-configuration, activationScripts]

 - [00:00](https://www.youtube.com/live/aQJE4ZxD3cc?t=00m00s) Intro, issues overview
 - [01:49](https://www.youtube.com/live/aQJE4ZxD3cc?t=01m49s) Looking at nixos-rebuild
 - [02:59](https://www.youtube.com/live/aQJE4ZxD3cc?t=02m59s) Building with (nixpkgs/nixos)
 - [06:24](https://www.youtube.com/live/aQJE4ZxD3cc?t=06m24s) Passing NixOS configuration via NIX_PATH/-I
 - [08:11](https://www.youtube.com/live/aQJE4ZxD3cc?t=08m11s) Using nixos directory from NIX_PATH
 - [09:21](https://www.youtube.com/live/aQJE4ZxD3cc?t=09m21s) Specifying channel on command line
 - [10:05](https://www.youtube.com/live/aQJE4ZxD3cc?t=10m05s) Using "nixos" attribute of nixpkgs to build system
 - [12:43](https://www.youtube.com/live/aQJE4ZxD3cc?t=12m43s) What is "system" attribute
 - [14:53](https://www.youtube.com/live/aQJE4ZxD3cc?t=14m53s) Fixing minimal configuration.nix
 - [15:41](https://www.youtube.com/live/aQJE4ZxD3cc?t=15m41s) What is stateVersion
 - [19:13](https://www.youtube.com/live/aQJE4ZxD3cc?t=19m13s) How flake is built in nixos-rebuild
 - [20:28](https://www.youtube.com/live/aQJE4ZxD3cc?t=20m28s) Building and deploying on other hosts using nixos-rebuild
 - [21:37](https://www.youtube.com/live/aQJE4ZxD3cc?t=21m37s) Switching system profile
 - [24:30](https://www.youtube.com/live/aQJE4ZxD3cc?t=24m30s) Switching the system to new configuration
 - [26:12](https://www.youtube.com/live/aQJE4ZxD3cc?t=26m12s) "switch-to-configuration" script
 - [30:07](https://www.youtube.com/live/aQJE4ZxD3cc?t=30m07s) "activate" script
 - [32:16](https://www.youtube.com/live/aQJE4ZxD3cc?t=32m16s) Atomically changing /etc directory
 - [34:28](https://www.youtube.com/live/aQJE4ZxD3cc?t=34m28s) Adding custom activation scripts
 - [39:30](https://www.youtube.com/live/aQJE4ZxD3cc?t=39m30s) When is "/run/current-system" symlink set
 - [44:12](https://www.youtube.com/live/aQJE4ZxD3cc?t=44m12s) Custom activation scripts ordering
 - [45:31](https://www.youtube.com/live/aQJE4ZxD3cc?t=45m31s) Signoff



## The Nix Hour #23 [from Nixpkgs to the NixOS ISO download, messy gnome VM configuration]

 - [00:00](https://www.youtube.com/live/DknShaVZ2II?t=00m00s) Intro
 - [01:17](https://www.youtube.com/live/DknShaVZ2II?t=01m17s) From the NixOS gnome download to the channels
 - [03:55](https://www.youtube.com/live/DknShaVZ2II?t=03m55s) From the channels to the Hydra evaluation
 - [05:26](https://www.youtube.com/live/DknShaVZ2II?t=05m26s) From the Hydra evaluation to the Nix expression
 - [07:00](https://www.youtube.com/live/DknShaVZ2II?t=07m00s) Failing to figure out where the attribute is defined when I should've looked at the `nixos` attribute!
 - [09:09](https://www.youtube.com/live/DknShaVZ2II?t=09m09s) Finding the iso_gnome definition and looking at its module
 - [11:01](https://www.youtube.com/live/DknShaVZ2II?t=11m01s) Trying to figure out why it doesn't substitute from Hydra prebuilt version
 - [30:10](https://www.youtube.com/live/DknShaVZ2II?t=30m10s) Trying out Hydra's "reproduce locally" script
 - [34:51](https://www.youtube.com/live/DknShaVZ2II?t=34m51s) Giving up and instead starting to build a VM with gnome by unrolling imports
 - [39:15](https://www.youtube.com/live/DknShaVZ2II?t=39m15s) Building the VM using nixos-rebuild, nix-build and nom-build
 - [41:48](https://www.youtube.com/live/DknShaVZ2II?t=41m48s) While waiting for the build to finish, trying to again see why it didn't substitute before
 - [43:15](https://www.youtube.com/live/DknShaVZ2II?t=43m15s) Running the VM and fixing the auto-login not working
 - [49:00](https://www.youtube.com/live/DknShaVZ2II?t=49m00s) Trying to fix the small VM window size



## The Nix Hour #24 [modules with secrets, systemd's LoadCredential]

 - [00:00](https://www.youtube.com/live/mumg9K9iwZs?t=00m00s) Intro, issues overview
 - [00:36](https://www.youtube.com/live/mumg9K9iwZs?t=00m36s) Secrets management
 - [01:26](https://www.youtube.com/live/mumg9K9iwZs?t=01m26s) Writing simple NixOS service
 - [03:48](https://www.youtube.com/live/mumg9K9iwZs?t=03m48s) Writing NixOS test
 - [08:55](https://www.youtube.com/live/mumg9K9iwZs?t=08m55s) Extracting NixOS configuration from test
 - [12:44](https://www.youtube.com/live/mumg9K9iwZs?t=12m44s) Adding password to service naively
 - [20:53](https://www.youtube.com/live/mumg9K9iwZs?t=20m53s) Providing password via file
 - [25:28](https://www.youtube.com/live/mumg9K9iwZs?t=25m28s) LoadCredential documentation
 - [26:19](https://www.youtube.com/live/mumg9K9iwZs?t=26m19s) Adding secret file outside Nix store
 - [32:26](https://www.youtube.com/live/mumg9K9iwZs?t=32m26s) Running service as a separate user
 - [41:27](https://www.youtube.com/live/mumg9K9iwZs?t=41m27s) Interactive debugging of NixOS test
 - [46:42](https://www.youtube.com/live/mumg9K9iwZs?t=46m42s) Using systemd-run to test systemd unit parameters
 - [57:10](https://www.youtube.com/live/mumg9K9iwZs?t=57m10s) Fixing NixOS test



## The Nix Hour #25 [populating /bin on NixOS, buildEnv, symlinkJoin]

 - [00:00](https://www.youtube.com/live/M-hhhNn-2kI?t=00m00s) Intro, question from the audience: Why don't we make NixOS look like a normal distro
 - [02:35](https://www.youtube.com/live/M-hhhNn-2kI?t=02m35s) NixOS environment is similar to Nix build sandbox
 - [05:01](https://www.youtube.com/live/M-hhhNn-2kI?t=05m01s) Creating /bin symlinks with NixOS activation scripts
 - [12:06](https://www.youtube.com/live/M-hhhNn-2kI?t=12m06s) How do other system deal with this issue, why did NixOS do it this way
 - [15:11](https://www.youtube.com/live/M-hhhNn-2kI?t=15m11s) Testing activation script in VM
 - [15:53](https://www.youtube.com/live/M-hhhNn-2kI?t=15m53s) Issue with ordering pakcages with same binary names
 - [17:34](https://www.youtube.com/live/M-hhhNn-2kI?t=17m34s) How are binary name conflicts resolved in NixOS. systemPackages source.
 - [18:50](https://www.youtube.com/live/M-hhhNn-2kI?t=18m50s) Exploring buildEnv to construct binary symlinks
 - [22:20](https://www.youtube.com/live/M-hhhNn-2kI?t=22m20s) NixOS system's path derivation
 - [24:23](https://www.youtube.com/live/M-hhhNn-2kI?t=24m23s) Detecting and resolving collision between binaries with same name. hiPrio and lowPrio.
 - [27:04](https://www.youtube.com/live/M-hhhNn-2kI?t=27m04s) Keeping both binaries in path
 - [29:11](https://www.youtube.com/live/M-hhhNn-2kI?t=29m11s) Changing gcc10 binary name using overrideAttrs
 - [32:10](https://www.youtube.com/live/M-hhhNn-2kI?t=32m10s) Using internal options in NixOS module system to expose intermediate results.
 - [35:17](https://www.youtube.com/live/M-hhhNn-2kI?t=35m17s) Changing derivation output using a wrapper derivation. symlinkJoin
 - [39:13](https://www.youtube.com/live/M-hhhNn-2kI?t=39m13s) Propagating attributes of the original derivation to the wrapper
 - [40:28](https://www.youtube.com/live/M-hhhNn-2kI?t=40m28s) Inspecting NixOS configuration in nix repl
 - [41:35](https://www.youtube.com/live/M-hhhNn-2kI?t=41m35s) https://nixos.wiki/wiki/Nix_Cookbook#Wrapping_packages
 - [42:19](https://www.youtube.com/live/M-hhhNn-2kI?t=42m19s) Creating an overlay in nixpkgs.overlay option
 - [44:52](https://www.youtube.com/live/M-hhhNn-2kI?t=44m52s) Symlinking /bin doesn't mean the package is properly installed
 - [46:54](https://www.youtube.com/live/M-hhhNn-2kI?t=46m54s) Comparing symlinkJoin and buildEnv
 - [48:13](https://www.youtube.com/live/M-hhhNn-2kI?t=48m13s) Creating a separate package to override symlinks
 - [52:18](https://www.youtube.com/live/M-hhhNn-2kI?t=52m18s) /usr/bin/env exists on NixOS, but not in Nix build sandbox



## The Nix Hour #26 [systemd in initrd]

 - [00:00](https://www.youtube.com/live/JNe3sdG4nno?t=00m00s) Intro
 - [00:26](https://www.youtube.com/live/JNe3sdG4nno?t=00m26s) Question: How to mount encrypted /home
 - [04:38](https://www.youtube.com/live/JNe3sdG4nno?t=04m38s) "Significant" changes in nixpkgs
 - [05:38](https://www.youtube.com/live/JNe3sdG4nno?t=05m38s) systemd in stage 1
 - [10:07](https://www.youtube.com/live/JNe3sdG4nno?t=10m07s) Trying it out in a VM
 - [11:45](https://www.youtube.com/live/JNe3sdG4nno?t=11m45s) Aside: networkd
 - [17:27](https://www.youtube.com/live/JNe3sdG4nno?t=17m27s) Switching from master to nixos-unstable
 - [19:14](https://www.youtube.com/live/JNe3sdG4nno?t=19m14s) Looking at network configuration sources
 - [21:20](https://www.youtube.com/live/JNe3sdG4nno?t=21m20s) Run the VM
 - [21:50](https://www.youtube.com/live/JNe3sdG4nno?t=21m50s) Adding units to systemd in initrd
 - [32:30](https://www.youtube.com/live/JNe3sdG4nno?t=32m30s) Reading password from tty
 - [33:27](https://www.youtube.com/live/JNe3sdG4nno?t=33m27s) Looking at root on LUKS configuration sources
 - [40:17](https://www.youtube.com/live/JNe3sdG4nno?t=40m17s) Passing tty to the service using StandardInput option
 - [44:01](https://www.youtube.com/live/JNe3sdG4nno?t=44m01s) Forcing boot process to wait for our service
 - [51:47](https://www.youtube.com/live/JNe3sdG4nno?t=51m47s) Wrapping up



## The Nix Hour #27 [hacking npmlock2nix, overriding derivations]

 - [00:00](https://www.youtube.com/live/LgcHmEfWobU?t=00m00s) Intro, audience question about npmlock2nix
 - [00:50](https://www.youtube.com/live/LgcHmEfWobU?t=00m50s) Look at npmlock2nix
 - [03:11](https://www.youtube.com/live/LgcHmEfWobU?t=03m11s) Starting a new Nix project using niv
 - [04:47](https://www.youtube.com/live/LgcHmEfWobU?t=04m47s) Getting example of npmlock2nix failing
 - [07:03](https://www.youtube.com/live/LgcHmEfWobU?t=07m03s) Adding npmlock2nix to the project
 - [12:00](https://www.youtube.com/live/LgcHmEfWobU?t=12m00s) How does npmlock2nix work
 - [19:11](https://www.youtube.com/live/LgcHmEfWobU?t=19m11s) Overriding buildInputs attribute for mkShell result
 - [23:02](https://www.youtube.com/live/LgcHmEfWobU?t=23m02s) Removing unwanted item from buildInputs
 - [25:10](https://www.youtube.com/live/LgcHmEfWobU?t=25m10s) Aside: Comparing derivations in Nix
 - [28:48](https://www.youtube.com/live/LgcHmEfWobU?t=28m48s) Removing unwanted item from buildInputs
 - [29:47](https://www.youtube.com/live/LgcHmEfWobU?t=29m47s) Debugging with lib.debug.trace
 - [34:15](https://www.youtube.com/live/LgcHmEfWobU?t=34m15s) Overriding shellHook
 - [40:15](https://www.youtube.com/live/LgcHmEfWobU?t=40m15s) Debugging unexpected dependency of derivation
 - [48:35](https://www.youtube.com/live/LgcHmEfWobU?t=48m35s) Looking at the end result
 - [49:03](https://www.youtube.com/live/LgcHmEfWobU?t=49m03s) How to make npmlock2nix more overridable
 - [57:25](https://www.youtube.com/live/LgcHmEfWobU?t=57m25s) Out of time, wrapping up



## The Nix Hour #28 [packaging shell scripts, wrappers, resholve]

 - [00:00](https://www.youtube.com/live/9l8vx0dcl6k?t=00m00s) Intro
 - [00:34](https://www.youtube.com/live/9l8vx0dcl6k?t=00m34s) GitHub issue: How to package shell scripts
 - [01:15](https://www.youtube.com/live/9l8vx0dcl6k?t=01m15s) Packaging a simple shell script with runCommand
 - [03:27](https://www.youtube.com/live/9l8vx0dcl6k?t=03m27s) Using patchShebangs to fix refernce to Bash in shebang
 - [04:28](https://www.youtube.com/live/9l8vx0dcl6k?t=04m28s) Providing tools in PATH with makeWrapper
 - [07:28](https://www.youtube.com/live/9l8vx0dcl6k?t=07m28s) Binaries are not always in default output
 - [08:00](https://www.youtube.com/live/9l8vx0dcl6k?t=08m00s) Aside: querying nixpkgs using Nix language
 - [11:28](https://www.youtube.com/live/9l8vx0dcl6k?t=11m28s) Making sure to use output with binaries with getBin
 - [13:34](https://www.youtube.com/live/9l8vx0dcl6k?t=13m34s) Using makeBinPath to generate PATH
 - [15:55](https://www.youtube.com/live/9l8vx0dcl6k?t=15m55s) Switching to wrapProgram to wrap script in place
 - [20:13](https://www.youtube.com/live/9l8vx0dcl6k?t=20m13s) Finding the source of self-referential result
 - [21:01](https://www.youtube.com/live/9l8vx0dcl6k?t=21m01s) Making PATH "pure" by overwriting it in the wrapper
 - [22:44](https://www.youtube.com/live/9l8vx0dcl6k?t=22m44s) Falling back on hardcoded binaries
 - [23:38](https://www.youtube.com/live/9l8vx0dcl6k?t=23m38s) Trying out resholve to sub binary paths in the script
 - [32:07](https://www.youtube.com/live/9l8vx0dcl6k?t=32m07s) Checking out resholve documentation
 - [35:28](https://www.youtube.com/live/9l8vx0dcl6k?t=35m28s) Switch to resholve.writeScriptBin
 - [38:40](https://www.youtube.com/live/9l8vx0dcl6k?t=38m40s) Manually resolving tool paths in the script
 - [41:09](https://www.youtube.com/live/9l8vx0dcl6k?t=41m09s) Looking at resholve Nix API implementation
 - [42:39](https://www.youtube.com/live/9l8vx0dcl6k?t=42m39s) Checking out nixpkgs writers for various languages
 - [44:03](https://www.youtube.com/live/9l8vx0dcl6k?t=44m03s) Inlining values from Nix into the script using substitute and substituteInPlace
 - [49:50](https://www.youtube.com/live/9l8vx0dcl6k?t=49m50s) Signoff



## The Nix Hour #29 [Python libraries in overlays, switching to home-manager on Ubuntu]




## The Nix Hour #30 [2nix tooling differences, flakes motivation]

 - [00:00](https://www.youtube.com/live/9o_A2loSH-0?t=00m00s) Intro
 - [01:35](https://www.youtube.com/live/9o_A2loSH-0?t=01m35s) Question: Integrating Nix with ecosystems like Rust, NPM
 - [03:35](https://www.youtube.com/live/9o_A2loSH-0?t=03m35s) Aside: what is nix-community organisation
 - [06:11](https://www.youtube.com/live/9o_A2loSH-0?t=06m11s) Tools for packaging Python
 - [07:12](https://www.youtube.com/live/9o_A2loSH-0?t=07m12s) Overview of dream2nix
 - [08:10](https://www.youtube.com/live/9o_A2loSH-0?t=08m10s) Q: What companies develop and use these tools?
 - [09:28](https://www.youtube.com/live/9o_A2loSH-0?t=09m28s) Checking out poetry2nix
 - [12:09](https://www.youtube.com/live/9o_A2loSH-0?t=12m09s) Aside: list element access in Nix repl vs CLI
 - [13:49](https://www.youtube.com/live/9o_A2loSH-0?t=13m49s) Back to poetry2nix, fetching dependencies by hash with Nix
 - [16:48](https://www.youtube.com/live/9o_A2loSH-0?t=16m48s) Separating Python dependencies by Python version and system
 - [17:50](https://www.youtube.com/live/9o_A2loSH-0?t=17m50s) Comparing poetry.lock to requirements.txt
 - [19:06](https://www.youtube.com/live/9o_A2loSH-0?t=19m06s) Package hashes from Hackage ecosystem in Nix, all-cabal-hashes and callHackage
 - [22:56](https://www.youtube.com/live/9o_A2loSH-0?t=22m56s) Q: What software architectures does Nix support?
 - [24:45](https://www.youtube.com/live/9o_A2loSH-0?t=24m45s) Impure software packaged with Nix
 - [27:47](https://www.youtube.com/live/9o_A2loSH-0?t=27m47s) CI/CD, https://floxdev.com, https://cachix.org, https://hercules-ci.com
 - [29:35](https://www.youtube.com/live/9o_A2loSH-0?t=29m35s) Using Nix in GitHub Actions, cachix/install-nix-action, cachix/cachix-action
 - [30:41](https://www.youtube.com/live/9o_A2loSH-0?t=30m41s) Using Nix in CI for impure builds or software, transitioning to pure Nix
 - [36:30](https://www.youtube.com/live/9o_A2loSH-0?t=36m30s) Comment about lack of standardization of approaches and solutions
 - [36:54](https://www.youtube.com/live/9o_A2loSH-0?t=36m54s) Impurities in packaging without flakes
 - [45:09](https://www.youtube.com/live/9o_A2loSH-0?t=45m09s) Adding custom attributes to default derivation
 - [47:20](https://www.youtube.com/live/9o_A2loSH-0?t=47m20s) How to do the same with flakes
 - [53:43](https://www.youtube.com/live/9o_A2loSH-0?t=53m43s) Why does nixpkgs use legacyPackages instead of packages
 - [57:06](https://www.youtube.com/live/9o_A2loSH-0?t=57m06s) flake-utils
 - [59:45](https://www.youtube.com/live/9o_A2loSH-0?t=59m45s) Out of time



## The Nix Hour #31 [participating in Zero Hydra Failures (ZHF)]

 - [00:00](https://www.youtube.com/live/kTzEslx3Kg0?t=00m00s) Intro, why was nodejs v16 deprecated ahead of EOL
 - [01:26](https://www.youtube.com/live/kTzEslx3Kg0?t=01m26s) NixOS release schedule
 - [03:03](https://www.youtube.com/live/kTzEslx3Kg0?t=03m03s) How meta.knownVulnerabilities is handled in nixpkgs
 - [05:13](https://www.youtube.com/live/kTzEslx3Kg0?t=05m13s) config.nix impurity in nixpkgs with and without flakes
 - [09:29](https://www.youtube.com/live/kTzEslx3Kg0?t=09m29s) Last days of ZHF 23.05
 - [09:57](https://www.youtube.com/live/kTzEslx3Kg0?t=09m57s) Hydra projects and jobsets
 - [11:49](https://www.youtube.com/live/kTzEslx3Kg0?t=11m49s) What happens with failures after ZHF ends
 - [12:48](https://www.youtube.com/live/kTzEslx3Kg0?t=12m48s) Looking at random broken package (clickhouse)
 - [15:28](https://www.youtube.com/live/kTzEslx3Kg0?t=15m28s) Simpler package (cameradar)
 - [16:56](https://www.youtube.com/live/kTzEslx3Kg0?t=16m56s) Using `nix edit` to find package source
 - [17:56](https://www.youtube.com/live/kTzEslx3Kg0?t=17m56s) How packages are marked as broken after ZHF
 - [18:37](https://www.youtube.com/live/kTzEslx3Kg0?t=18m37s) Details about ZHF
 - [19:29](https://www.youtube.com/live/kTzEslx3Kg0?t=19m29s) https://malob.github.io/nix-review-tools-reports
 - [22:15](https://www.youtube.com/live/kTzEslx3Kg0?t=22m15s) https://zh.fail
 - [23:17](https://www.youtube.com/live/kTzEslx3Kg0?t=23m17s) A script to build all packages that you maintain
 - [24:19](https://www.youtube.com/live/kTzEslx3Kg0?t=24m19s) Confirming breakage on master
 - [25:17](https://www.youtube.com/live/kTzEslx3Kg0?t=25m17s) Checking if someone else posted a PR with a fix
 - [26:56](https://www.youtube.com/live/kTzEslx3Kg0?t=26m56s) Discovering changes that affect package on Hydra
 - [28:14](https://www.youtube.com/live/kTzEslx3Kg0?t=28m14s) We'll not cover git bisect here
 - [28:32](https://www.youtube.com/live/kTzEslx3Kg0?t=28m32s) Getting into build directory
 - [30:42](https://www.youtube.com/live/kTzEslx3Kg0?t=30m42s) Looking at the broken dependency
 - [31:29](https://www.youtube.com/live/kTzEslx3Kg0?t=31m29s) Looking at the source of the package itself
 - [35:14](https://www.youtube.com/live/kTzEslx3Kg0?t=35m14s) Dowgrading dependency if older one exists in nixpkgs
 - [36:40](https://www.youtube.com/live/kTzEslx3Kg0?t=36m40s) Getting old version of dependency outside nixpkgs
 - [38:52](https://www.youtube.com/live/kTzEslx3Kg0?t=38m52s) Finding nixpkgs commit containing old version of curl on Hydra
 - [40:12](https://www.youtube.com/live/kTzEslx3Kg0?t=40m12s) Fetching old version of nixpkgs, using package from it
 - [42:19](https://www.youtube.com/live/kTzEslx3Kg0?t=42m19s) Checking how long does it take to build a package on Hydra
 - [42:41](https://www.youtube.com/live/kTzEslx3Kg0?t=42m41s) Testing the package, looking at what it supposed to do
 - [43:56](https://www.youtube.com/live/kTzEslx3Kg0?t=43m56s) Marking the package as broken with comment
 - [45:19](https://www.youtube.com/live/kTzEslx3Kg0?t=45m19s) Creating a PR to nixpkgs
 - [51:42](https://www.youtube.com/live/kTzEslx3Kg0?t=51m42s) Q: Why doesn't fetching old nixpkgs work for upstream?
 - [53:16](https://www.youtube.com/live/kTzEslx3Kg0?t=53m16s) Q: Can we make old curl available in nixpkgs?
 - [56:55](https://www.youtube.com/live/kTzEslx3Kg0?t=56m55s) Out of time



## The Nix Hour #32 [extending nixpkgs lib and Nix builtins, Nix plugins]

 - [00:00](https://www.youtube.com/live/-ohLh-QHc_A?t=00m00s) Intro
 - [00:47](https://www.youtube.com/live/-ohLh-QHc_A?t=00m47s) Q: How to extend nixpkgs.lib or builtins
 - [01:28](https://www.youtube.com/live/-ohLh-QHc_A?t=01m28s) Simple example, adding new fetcher to nixpkgs lib
 - [02:26](https://www.youtube.com/live/-ohLh-QHc_A?t=02m26s) lib.extend: overlay system for lib
 - [03:14](https://www.youtube.com/live/-ohLh-QHc_A?t=03m14s) Aside: evaluating function with all default args from cli
 - [03:54](https://www.youtube.com/live/-ohLh-QHc_A?t=03m54s) Why we can't use //, injecting new lib into NixOS module
 - [06:49](https://www.youtube.com/live/-ohLh-QHc_A?t=06m49s) Extending builtins by redefining the name builtins
 - [08:32](https://www.youtube.com/live/-ohLh-QHc_A?t=08m32s) builtins.scopedImport
 - [10:38](https://www.youtube.com/live/-ohLh-QHc_A?t=10m38s) Dangers and usecases of scopedImport
 - [13:33](https://www.youtube.com/live/-ohLh-QHc_A?t=13m33s) Adding builtins using Nix plugins
 - [16:25](https://www.youtube.com/live/-ohLh-QHc_A?t=16m25s) Adding custom fetcher with nixpkgs overlays, pkgs.extend, pkgs.appendOverlays
 - [17:58](https://www.youtube.com/live/-ohLh-QHc_A?t=17m58s) When use self and super or final and prev in overlays
 - [19:34](https://www.youtube.com/live/-ohLh-QHc_A?t=19m34s) Self-refferential packages using makeOverridable
 - [22:16](https://www.youtube.com/live/-ohLh-QHc_A?t=22m16s) Recursion using overrides
 - [24:53](https://www.youtube.com/live/-ohLh-QHc_A?t=24m53s) Overriding self-refferential derivation, why use super only on top level of the overlay
 - [27:43](https://www.youtube.com/live/-ohLh-QHc_A?t=27m43s) Looking for Nix plugins
 - [29:53](https://www.youtube.com/live/-ohLh-QHc_A?t=29m53s) Trying Nix plugin from nix-doc project
 - [32:54](https://www.youtube.com/live/-ohLh-QHc_A?t=32m54s) Overriding nix as a dependency for a plugin
 - [37:20](https://www.youtube.com/live/-ohLh-QHc_A?t=37m20s) aside: Evaluating NixOS config
 - [40:50](https://www.youtube.com/live/-ohLh-QHc_A?t=40m50s) Debugging dependency override
 - [49:27](https://www.youtube.com/live/-ohLh-QHc_A?t=49m27s) Using user's nix.conf
 - [53:20](https://www.youtube.com/live/-ohLh-QHc_A?t=53m20s) Exposing a value from inside NixOS module system
 - [56:10](https://www.youtube.com/live/-ohLh-QHc_A?t=56m10s) Testing final nix-doc configuration
 - [58:55](https://www.youtube.com/live/-ohLh-QHc_A?t=58m55s) Out of time



## The Nix Hour #33 [overriding OpenSSL in Python, installing Python dependencies]

 - [00:00](https://www.youtube.com/live/zfeKl99iJ9E?t=00m00s) Intro
 - [00:24](https://www.youtube.com/live/zfeKl99iJ9E?t=00m24s) Q: Why does Python needs "self" argument to override OpenSSL dependency?
 - [01:07](https://www.youtube.com/live/zfeKl99iJ9E?t=01m07s) Verifying locally
 - [02:51](https://www.youtube.com/live/zfeKl99iJ9E?t=02m51s) Using "self" in overlays instead of "rec", compared to "super"
 - [04:15](https://www.youtube.com/live/zfeKl99iJ9E?t=04m15s) Debugging why derivation is left unchanged
 - [05:58](https://www.youtube.com/live/zfeKl99iJ9E?t=05m58s) Looking for python package sources from all-packages.nix
 - [06:55](https://www.youtube.com/live/zfeKl99iJ9E?t=06m55s) Using unsafeGetAttrPos to find package sources.
 - [08:38](https://www.youtube.com/live/zfeKl99iJ9E?t=08m38s) Looking for python defined in aliases.nix
 - [11:24](https://www.youtube.com/live/zfeKl99iJ9E?t=11m24s) Overriding Python packages in overlays.
 - [13:38](https://www.youtube.com/live/zfeKl99iJ9E?t=13m38s) Q: Why does python3Packages exist?
 - [15:54](https://www.youtube.com/live/zfeKl99iJ9E?t=15m54s) Digging into pythonInterpreters
 - [17:33](https://www.youtube.com/live/zfeKl99iJ9E?t=17m33s) pythonPackagesExtensions
 - [18:21](https://www.youtube.com/live/zfeKl99iJ9E?t=18m21s) Cross-compilation support via __splicedPackages, makeScopeWithSplicing
 - [22:17](https://www.youtube.com/live/zfeKl99iJ9E?t=22m17s) Comparing normal Python and spliced one
 - [24:00](https://www.youtube.com/live/zfeKl99iJ9E?t=24m00s) Checking how callPackage generates __splicedPackages
 - [26:50](https://www.youtube.com/live/zfeKl99iJ9E?t=26m50s) Checking how cross-compilation platforms are set
 - [28:20](https://www.youtube.com/live/zfeKl99iJ9E?t=28m20s) Looking at cross-compilation in stdenv
 - [30:34](https://www.youtube.com/live/zfeKl99iJ9E?t=30m34s) Checking Python section of the manual
 - [32:17](https://www.youtube.com/live/zfeKl99iJ9E?t=32m17s) Debugging the nixpkgs overlay
 - [36:49](https://www.youtube.com/live/zfeKl99iJ9E?t=36m49s) Looking at the resulting derivation itself
 - [44:27](https://www.youtube.com/live/zfeKl99iJ9E?t=44m27s) Finding out how openssl argument is handled in Python package
 - [46:32](https://www.youtube.com/live/zfeKl99iJ9E?t=46m32s) Q: How to manage dependencies for Python project with Nix
 - [47:13](https://www.youtube.com/live/zfeKl99iJ9E?t=47m13s) Looking for gdal package in nixpkgs
 - [49:07](https://www.youtube.com/live/zfeKl99iJ9E?t=49m07s) "Installing" python package on NixOS system
 - [54:41](https://www.youtube.com/live/zfeKl99iJ9E?t=54m41s) Adding Python packages to env with python3.withPackages
 - [55:42](https://www.youtube.com/live/zfeKl99iJ9E?t=55m42s) Need for parethesis in packages list
 - [57:09](https://www.youtube.com/live/zfeKl99iJ9E?t=57m09s) Other options
 - [58:05](https://www.youtube.com/live/zfeKl99iJ9E?t=58m05s) Signoff



## The Nix Hour #34 [python3.withPackages vs python3Packages, file sets]

 - [00:00](https://www.youtube.com/live/4HEfRYp-S8c?t=00m00s) Intro, no Nix Hour for the next 2 weeks
 - [00:54](https://www.youtube.com/live/4HEfRYp-S8c?t=00m54s) Q: what is the difference between using python.pkgs and python.withPackages
 - [01:51](https://www.youtube.com/live/4HEfRYp-S8c?t=01m51s) nix-shell and python3Packages
 - [02:55](https://www.youtube.com/live/4HEfRYp-S8c?t=02m55s) nix-shell and withPackages
 - [03:32](https://www.youtube.com/live/4HEfRYp-S8c?t=03m32s) venv usage works with withPackages, but not with python3Packages
 - [04:39](https://www.youtube.com/live/4HEfRYp-S8c?t=04m39s) Looking at PYTHONPATH with both variants
 - [06:15](https://www.youtube.com/live/4HEfRYp-S8c?t=06m15s) makeBinaryWrapper
 - [09:58](https://www.youtube.com/live/4HEfRYp-S8c?t=09m58s) difference between buildInputs and python.withPackages
 - [10:52](https://www.youtube.com/live/4HEfRYp-S8c?t=10m52s) buildInputs can poison derivation environment with setup-hook
 - [12:19](https://www.youtube.com/live/4HEfRYp-S8c?t=12m19s) python3.withPackages only provides one binary instead
 - [13:07](https://www.youtube.com/live/4HEfRYp-S8c?t=13m07s) Recommend using buildPythonPackage when possible
 - [14:36](https://www.youtube.com/live/4HEfRYp-S8c?t=14m36s) File sets: why, what and how.
 - [15:25](https://www.youtube.com/live/4HEfRYp-S8c?t=15m25s) Current state of things: using ./. as src for derivation
 - [19:25](https://www.youtube.com/live/4HEfRYp-S8c?t=19m25s) Comparing resulting derivations and their srcs
 - [22:22](https://www.youtube.com/live/4HEfRYp-S8c?t=22m22s) Flakes don't have this particular issue, replicating that behavior with fetchGit
 - [25:27](https://www.youtube.com/live/4HEfRYp-S8c?t=25m27s) Still not ideal: any change to git repo triggers rebuild
 - [26:19](https://www.youtube.com/live/4HEfRYp-S8c?t=26m19s) Excluding files from the src with builtins.path
 - [31:58](https://www.youtube.com/live/4HEfRYp-S8c?t=31m58s) Paths and strings in Nix are never equal
 - [32:51](https://www.youtube.com/live/4HEfRYp-S8c?t=32m51s) Filtering out object files
 - [34:22](https://www.youtube.com/live/4HEfRYp-S8c?t=34m22s) Filter always recurses into subdirectories
 - [27:47](https://www.youtube.com/live/4HEfRYp-S8c?t=27m47s) Including only one subdirectory
 - [39:25](https://www.youtube.com/live/4HEfRYp-S8c?t=39m25s) File sets overview
 - [41:15](https://www.youtube.com/live/4HEfRYp-S8c?t=41m15s) Functions: union
 - [41:35](https://www.youtube.com/live/4HEfRYp-S8c?t=41m35s) Functions: trace
 - [42:49](https://www.youtube.com/live/4HEfRYp-S8c?t=42m49s) Functions: difference
 - [43:50](https://www.youtube.com/live/4HEfRYp-S8c?t=43m50s) Functions: fileFilter
 - [45:06](https://www.youtube.com/live/4HEfRYp-S8c?t=45m06s) Functions: intersect
 - [45:25](https://www.youtube.com/live/4HEfRYp-S8c?t=45m25s) Nothing is imported into Nix store
 - [47:17](https://www.youtube.com/live/4HEfRYp-S8c?t=47m17s) Functions: toSource
 - [49:22](https://www.youtube.com/live/4HEfRYp-S8c?t=49m22s) Switching to file sets in our example, "unions" function
 - [56:00](https://www.youtube.com/live/4HEfRYp-S8c?t=56m00s) File sets overview summary
 - [59:06](https://www.youtube.com/live/4HEfRYp-S8c?t=59m06s) Outro, see you in 3 weeks



## The Nix Hour #35 [NixOS modules: generating config, infinite recursion]

 - [00:00](https://www.youtube.com/live/cNXkXBxctqk?t=00m00s) Intro
 - [00:30](https://www.youtube.com/live/cNXkXBxctqk?t=00m30s) Q: Generating niginx config for NixOS modules
 - [15:50](https://www.youtube.com/live/cNXkXBxctqk?t=15m50s) Q: Fighting infininite recursion during modules refactoring



## The Nix Hour #36 [RFC 140: Simple Package Paths]

 - [00:00](https://www.youtube.com/live/iK0tu9GkCWQ?t=00m00s) Intro
 - [00:24](https://www.youtube.com/live/iK0tu9GkCWQ?t=00m24s) RFC 140: Simple Package Paths
 - [01:27](https://www.youtube.com/live/iK0tu9GkCWQ?t=01m27s) Adding package in a new structure
 - [04:12](https://www.youtube.com/live/iK0tu9GkCWQ?t=04m12s) Comparing to the current all-packages.nix approach
 - [08:15](https://www.youtube.com/live/iK0tu9GkCWQ?t=08m15s) Error handling for pkgs/by-name
 - [10:45](https://www.youtube.com/live/iK0tu9GkCWQ?t=10m45s) Access to files from other packages is blocked
 - [23:38](https://www.youtube.com/live/iK0tu9GkCWQ?t=23m38s) How find package source file through meta.
 - [30:51](https://www.youtube.com/live/iK0tu9GkCWQ?t=30m51s) Defining derivation environment variables using env attr.
 - [35:29](https://www.youtube.com/live/iK0tu9GkCWQ?t=35m29s) Upcoming __cleanAttrs feature
 - [42:21](https://www.youtube.com/live/iK0tu9GkCWQ?t=42m21s) overriteAttrs with env attribute
 - [45:53](https://www.youtube.com/live/iK0tu9GkCWQ?t=45m53s) RFC 140 implementation: how shards are merged together
 - [49:19](https://www.youtube.com/live/iK0tu9GkCWQ?t=49m19s) aside: Different fold functions in Nix and nixpkgs.lib
 - [52:05](https://www.youtube.com/live/iK0tu9GkCWQ?t=52m05s) Back to RFC 140: merging big attrsets, mergeAttrsList
 - [59:06](https://www.youtube.com/live/iK0tu9GkCWQ?t=59m06s) Outro



## The Nix Hour #37 [systemd units in NixOS, RFC process]

 - [00:00](https://www.youtube.com/live/AUJBW-tTQ3M?t=00m00s) Intro
 - [00:27](https://www.youtube.com/live/AUJBW-tTQ3M?t=00m27s) Q: k3s and cgroup scopes on NixOS
 - [01:43](https://www.youtube.com/live/AUJBW-tTQ3M?t=01m43s) Ways to isntall package on NixOS: nix-env, nix-shell, systemPackages
 - [03:15](https://www.youtube.com/live/AUJBW-tTQ3M?t=03m15s) Using services from NixOS modules
 - [05:03](https://www.youtube.com/live/AUJBW-tTQ3M?t=05m03s) Looking for information about cgroups
 - [07:20](https://www.youtube.com/live/AUJBW-tTQ3M?t=07m20s) Q: Overriding user@.service unit parameters in NixOS
 - [09:02](https://www.youtube.com/live/AUJBW-tTQ3M?t=09m02s) Tracking down systemd unit in NixOS configuration
 - [18:41](https://www.youtube.com/live/AUJBW-tTQ3M?t=18m41s) Checking NixOS configuration values without rebuilding the system
 - [22:37](https://www.youtube.com/live/AUJBW-tTQ3M?t=22m37s) Where NixOS module system looks for configuration files
 - [26:27](https://www.youtube.com/live/AUJBW-tTQ3M?t=26m27s) Evaluating unit text without building
 - [30:11](https://www.youtube.com/live/AUJBW-tTQ3M?t=30m11s) Overriding config of user@.service
 - [34:26](https://www.youtube.com/live/AUJBW-tTQ3M?t=34m26s) Example: looking for stateVersion declaration
 - [36:06](https://www.youtube.com/live/AUJBW-tTQ3M?t=36m06s) Operator precedence in Nix
 - [42:10](https://www.youtube.com/live/AUJBW-tTQ3M?t=42m10s) Q: How does RFC process work in Nix(OS)
 - [42:52](https://www.youtube.com/live/AUJBW-tTQ3M?t=42m52s) When to create RFC
 - [45:22](https://www.youtube.com/live/AUJBW-tTQ3M?t=45m22s) RFC process overview
 - [53:55](https://www.youtube.com/live/AUJBW-tTQ3M?t=53m55s) Q: Compare Nix to Spack
 - [55:35](https://www.youtube.com/live/AUJBW-tTQ3M?t=55m35s) Outro



## The Nix Hour #38 [evaluation caching and performance in Nix]

 - [00:00](https://www.youtube.com/live/WzCHnM_vsMk?t=00m00s) Intro, vote for new Nix Hour time
 - [00:58](https://www.youtube.com/live/WzCHnM_vsMk?t=00m58s) Q: What does 2023 Nix cache?
 - [02:35](https://www.youtube.com/live/WzCHnM_vsMk?t=02m35s) Thunk evaluation is cached in memory
 - [10:56](https://www.youtube.com/live/WzCHnM_vsMk?t=10m56s) File import in-memory cache
 - [14:03](https://www.youtube.com/live/WzCHnM_vsMk?t=14m03s) Leveraging evaluation cache with let-in
 - [17:32](https://www.youtube.com/live/WzCHnM_vsMk?t=17m32s) Leveraging file import cache
 - [19:40](https://www.youtube.com/live/WzCHnM_vsMk?t=19m40s) On-disk evaluation cache for flakes
 - [28:46](https://www.youtube.com/live/WzCHnM_vsMk?t=28m46s) Rules for recursing into attrsets in nixpkgs
 - [32:44](https://www.youtube.com/live/WzCHnM_vsMk?t=32m44s) How is pkgs.pkgs populated
 - [36:52](https://www.youtube.com/live/WzCHnM_vsMk?t=36m52s) Debugging evaluation performance with NIX_SHOW_STATS
 - [44:51](https://www.youtube.com/live/WzCHnM_vsMk?t=44m51s) NIX_COUNT_CALLS and trace-function-calls
 - [50:12](https://www.youtube.com/live/WzCHnM_vsMk?t=50m12s) How it works with nixpkgs
 - [52:34](https://www.youtube.com/live/WzCHnM_vsMk?t=52m34s) Using hyperfine for benchmarking
 - [52:48](https://www.youtube.com/live/WzCHnM_vsMk?t=52m48s) Manual benchmarking using sta for reports
 - [54:41](https://www.youtube.com/live/WzCHnM_vsMk?t=54m41s) ofborg evaluation performance report for PRs
 - [59:31](https://www.youtube.com/live/WzCHnM_vsMk?t=59m31s) Outro, don't forget to vote for new time



## The Nix Hour #39 [removing channels from NixOS]

 - [00:00](https://www.youtube.com/live/5V1OFSa7VlQ?t=00m00s) Intro, new Nix hour time
 - [00:28](https://www.youtube.com/live/5V1OFSa7VlQ?t=00m28s) Q: How to get rid of channels on NixOS system
 - [02:19](https://www.youtube.com/live/5V1OFSa7VlQ?t=02m19s) Nix installation script internals
 - [06:46](https://www.youtube.com/live/5V1OFSa7VlQ?t=06m46s) Looking for NIX_PATH default value
 - [12:54](https://www.youtube.com/live/5V1OFSa7VlQ?t=12m54s) Removing NIX_PATH on NixOS
 - [18:12](https://www.youtube.com/live/5V1OFSa7VlQ?t=18m12s) Finding where ~/.nix-defexpr/channels in NIX_PATH comes from
 - [23:16](https://www.youtube.com/live/5V1OFSa7VlQ?t=23m16s) Disabling nix.channel.enable in NixOS configuration
 - [24:40](https://www.youtube.com/live/5V1OFSa7VlQ?t=24m40s) How nixPath default text is generated in manual
 - [30:52](https://www.youtube.com/live/5V1OFSa7VlQ?t=30m52s) When was nix.channel created
 - [33:06](https://www.youtube.com/live/5V1OFSa7VlQ?t=33m06s) https://nixpk.gs 
 - [33:52](https://www.youtube.com/live/5V1OFSa7VlQ?t=33m52s) Tracking down channel source by git-revision
 - [37:59](https://www.youtube.com/live/5V1OFSa7VlQ?t=37m59s) https://channels.nix.gsc.io (outdated)
 - [40:03](https://www.youtube.com/live/5V1OFSa7VlQ?t=40m03s) Nix channel status https://status.nixos.org
 - [41:39](https://www.youtube.com/live/5V1OFSa7VlQ?t=41m39s) Development branches in Hydra
 - [42:51](https://www.youtube.com/live/5V1OFSa7VlQ?t=42m51s) Hydra job sources
 - [45:44](https://www.youtube.com/live/5V1OFSa7VlQ?t=45m44s) Evaluation errors in Hydra
 - [46:21](https://www.youtube.com/live/5V1OFSa7VlQ?t=46m21s) Packages marked as broken after Zero Hydra Failure
 - [51:54](https://www.youtube.com/live/5V1OFSa7VlQ?t=51m54s) Nix registry
 - [58:04](https://www.youtube.com/live/5V1OFSa7VlQ?t=58m04s) Outro, next week Thu, 18:00 CEST



## The Nix Hour #40 [debugging and tracing NixOS modules]

 - [00:00](https://www.youtube.com/live/aLy8id4wr-M?t=00m00s) Intro
 - [01:11](https://www.youtube.com/live/aLy8id4wr-M?t=01m11s) Q: Debugging derivations with Nix trace
 - [02:32](https://www.youtube.com/live/aLy8id4wr-M?t=02m32s) Simplest NixOS module scaffolding
 - [03:45](https://www.youtube.com/live/aLy8id4wr-M?t=03m45s) Aside: Catch-all NixOS types (raw, anything)
 - [06:27](https://www.youtube.com/live/aLy8id4wr-M?t=06m27s) Getting a confusing error from NixOS module system
 - [10:54](https://www.youtube.com/live/aLy8id4wr-M?t=10m54s) Difference from Nix 2.3
 - [12:41](https://www.youtube.com/live/aLy8id4wr-M?t=12m41s) Adding information to the trace with builtins.addErrorContext
 - [14:45](https://www.youtube.com/live/aLy8id4wr-M?t=14m45s) Looking at PR#8623: Stack trace improvements
 - [18:42](https://www.youtube.com/live/aLy8id4wr-M?t=18m42s) Back to NixOS modules example
 - [19:33](https://www.youtube.com/live/aLy8id4wr-M?t=19m33s) lib.types.string is deprecated in favor of str
 - [25:05](https://www.youtube.com/live/aLy8id4wr-M?t=25m05s) Providing overridable defaults for NixOS options
 - [32:17](https://www.youtube.com/live/aLy8id4wr-M?t=32m17s) Pattern for overridable settings
 - [34:02](https://www.youtube.com/live/aLy8id4wr-M?t=34m02s) Injecting pkgs argument into module system without NixOS
 - [35:15](https://www.youtube.com/live/aLy8id4wr-M?t=35m15s) Strict evaluation and derivations
 - [36:14](https://www.youtube.com/live/aLy8id4wr-M?t=36m14s) nix-instantiate traverses attribute sets
 - [37:15](https://www.youtube.com/live/aLy8id4wr-M?t=37m15s) Creating options for values derived from other options
 - [41:00](https://www.youtube.com/live/aLy8id4wr-M?t=41m00s) Q: How to use pasthru.tests outside nixpkgs?
 - [50:50](https://www.youtube.com/live/aLy8id4wr-M?t=50m50s) Q: Changing dbeaver version in nixpkgs
 - [52:39](https://www.youtube.com/live/aLy8id4wr-M?t=52m39s) Issue with passing arrays to builder as arguments, pkgs.lib.escapeShellArgs
 - [57:37](https://www.youtube.com/live/aLy8id4wr-M?t=57m37s) Outro



## The Nix Hour #41 [passthru attribute, using services from nixos-unstable]

 - [00:00](https://www.youtube.com/live/bJY2O8_ZNiU?t=00m00s) Intro
 - [00:19](https://www.youtube.com/live/bJY2O8_ZNiU?t=00m19s) Q: How does passthru work and why
 - [01:15](https://www.youtube.com/live/bJY2O8_ZNiU?t=01m15s) Simple derivation example
 - [02:32](https://www.youtube.com/live/bJY2O8_ZNiU?t=02m32s) Adding attributes to derivation attrset with //
 - [06:54](https://www.youtube.com/live/bJY2O8_ZNiU?t=06m54s) Overriding derivation that uses // instead of passthru
 - [09:23](https://www.youtube.com/live/bJY2O8_ZNiU?t=09m23s) Aside: how runCommand passes script to builder
 - [11:02](https://www.youtube.com/live/bJY2O8_ZNiU?t=11m02s) Why use passthru instead of //
 - [12:45](https://www.youtube.com/live/bJY2O8_ZNiU?t=12m45s) How does passthru work
 - [19:10](https://www.youtube.com/live/bJY2O8_ZNiU?t=19m10s) Escaping env var when passing to derivations
 - [20:40](https://www.youtube.com/live/bJY2O8_ZNiU?t=20m40s) Q: How to find what attributes that can be set in flakes
 - [27:15](https://www.youtube.com/live/bJY2O8_ZNiU?t=27m15s) Q: Using services from different versions of NixOS in flake
 - [35:02](https://www.youtube.com/live/bJY2O8_ZNiU?t=35m02s) Aside: How master differs from unstable
 - [38:20](https://www.youtube.com/live/bJY2O8_ZNiU?t=38m20s) Back to using service available in nixos-unstable
 - [40:34](https://www.youtube.com/live/bJY2O8_ZNiU?t=40m34s) Aside: Attribute sets and path interpolation to strings
 - [44:20](https://www.youtube.com/live/bJY2O8_ZNiU?t=44m20s) Back to importing module from nixos-unstable
 - [46:30](https://www.youtube.com/live/bJY2O8_ZNiU?t=46m30s) Infinite recursion when using NixOS module arguments
 - [47:44](https://www.youtube.com/live/bJY2O8_ZNiU?t=47m44s) Aside: Using nix-instantiate to build NixOS configuration
 - [52:03](https://www.youtube.com/live/bJY2O8_ZNiU?t=52m03s) Back to infinite recursion, specialArgs
 - [53:41](https://www.youtube.com/live/bJY2O8_ZNiU?t=53m41s) Adding package from unstable to NixOS configuration with nixpkgs.overlays
 - [59:16](https://www.youtube.com/live/bJY2O8_ZNiU?t=59m16s) Outro



## The Nix Hour #42 [finalAttrs, NixOS arguments, unfree licenses]

 - [00:00](https://www.youtube.com/live/jb36PfG28W8?t=00m00s) Intro, no Nix Hour next week
 - [00:45](https://www.youtube.com/live/jb36PfG28W8?t=00m45s) Q: finalAttrs pattern benefits, overrideAttrs and overlays
 - [06:36](https://www.youtube.com/live/jb36PfG28W8?t=06m36s) Overriding version and src with overrideAttrs
 - [09:46](https://www.youtube.com/live/jb36PfG28W8?t=09m46s) Recursive attribute sets
 - [10:34](https://www.youtube.com/live/jb36PfG28W8?t=10m34s) Using fixed point, lib.fix
 - [11:52](https://www.youtube.com/live/jb36PfG28W8?t=11m52s) How overlays work
 - [13:09](https://www.youtube.com/live/jb36PfG28W8?t=13m09s) Using finalAttrs in derivation
 - [15:04](https://www.youtube.com/live/jb36PfG28W8?t=15m04s) Using finalAttrs in overrideAttrs
 - [17:46](https://www.youtube.com/live/jb36PfG28W8?t=17m46s) passthru.tests: nixosTest using finalPackage
 - [21:54](https://www.youtube.com/live/jb36PfG28W8?t=21m54s) finalAttrs examples from nixpkgs
 - [23:38](https://www.youtube.com/live/jb36PfG28W8?t=23m38s) Q: NixOS configuration arguments
 - [25:40](https://www.youtube.com/live/jb36PfG28W8?t=25m40s) Nix module args: lib
 - [26:26](https://www.youtube.com/live/jb36PfG28W8?t=26m26s) Nix module args: config
 - [29:04](https://www.youtube.com/live/jb36PfG28W8?t=29m04s) Nix module args: options
 - [32:30](https://www.youtube.com/live/jb36PfG28W8?t=32m30s) Nix module args: specialArgs
 - [38:20](https://www.youtube.com/live/jb36PfG28W8?t=38m20s) Nix module args: ..., builtins.functionArgs
 - [39:26](https://www.youtube.com/live/jb36PfG28W8?t=39m26s) NixOS specific arguments
 - [40:39](https://www.youtube.com/live/jb36PfG28W8?t=40m39s) NixOS module args: modulesPath
 - [42:23](https://www.youtube.com/live/jb36PfG28W8?t=42m23s) NixOS module args: baseModules, extraModules
 - [43:33](https://www.youtube.com/live/jb36PfG28W8?t=43m33s) NixOS module args: extendModules
 - [45:34](https://www.youtube.com/live/jb36PfG28W8?t=45m34s) NixOS module args: pkgs and utils
 - [46:17](https://www.youtube.com/live/jb36PfG28W8?t=46m17s) NixOS module args: moduleType
 - [46:55](https://www.youtube.com/live/jb36PfG28W8?t=46m55s) Q: Asking users to accept unfree licenses 
 - [47:38](https://www.youtube.com/live/jb36PfG28W8?t=47m38s) requireFile
 - [51:07](https://www.youtube.com/live/jb36PfG28W8?t=51m07s) nix-prefetch-url
 - [52:02](https://www.youtube.com/live/jb36PfG28W8?t=52m02s) inlining a script in error message
 - [54:32](https://www.youtube.com/live/jb36PfG28W8?t=54m32s) impureEnvVars
 - [57:27](https://www.youtube.com/live/jb36PfG28W8?t=57m27s) Q: Language servers for Nix
 - [59:15](https://www.youtube.com/live/jb36PfG28W8?t=59m15s) Outro



## The Nix Hour #43 [adding trunk version of CPython to nixpkgs]

 - [00:00](https://www.youtube.com/live/T79B4t80QZ4?t=00m00s) Intro
 - [00:47](https://www.youtube.com/live/T79B4t80QZ4?t=00m47s) Q: Compiling CPython from source
 - [01:55](https://www.youtube.com/live/T79B4t80QZ4?t=01m55s) Python packages structure in nixpkgs
 - [03:07](https://www.youtube.com/live/T79B4t80QZ4?t=03m07s) Adding Python version to pythonInterpreters
 - [09:50](https://www.youtube.com/live/T79B4t80QZ4?t=09m50s) fetchurl vs fetchzip with GitHub
 - [12:20](https://www.youtube.com/live/T79B4t80QZ4?t=12m20s) Back to building CPython, adding patches
 - [17:13](https://www.youtube.com/live/T79B4t80QZ4?t=17m13s) Look for build times in Hydra
 - [18:37](https://www.youtube.com/live/T79B4t80QZ4?t=18m37s) Limiting parallelism in build process
 - [19:52](https://www.youtube.com/live/T79B4t80QZ4?t=19m52s) Adding CPython version in overlay
 - [22:06](https://www.youtube.com/live/T79B4t80QZ4?t=22m06s) Simple flake with an overlay
 - [25:52](https://www.youtube.com/live/T79B4t80QZ4?t=25m52s) Adjusting code from nixpkgs in overlay
 - [26:47](https://www.youtube.com/live/T79B4t80QZ4?t=26m47s) Aside: callPackage and __splicedPackages
 - [35:00](https://www.youtube.com/live/T79B4t80QZ4?t=35m00s) Back to passing arguments to CPython build
 - [37:54](https://www.youtube.com/live/T79B4t80QZ4?t=37m54s) Overriding src definition
 - [40:56](https://www.youtube.com/live/T79B4t80QZ4?t=40m56s) Adding patches
 - [44:49](https://www.youtube.com/live/T79B4t80QZ4?t=44m49s) Fixing source hash
 - [46:30](https://www.youtube.com/live/T79B4t80QZ4?t=46m30s) Pinning nixpkgs revision in flake
 - [48:26](https://www.youtube.com/live/T79B4t80QZ4?t=48m26s) Overriding pythonInterpreters and .override
 - [55:35](https://www.youtube.com/live/T79B4t80QZ4?t=55m35s) Making sure master CPython runs
 - [56:24](https://www.youtube.com/live/T79B4t80QZ4?t=56m24s) Could we use overrideAttrs on last CPython version?
 - [58:10](https://www.youtube.com/live/T79B4t80QZ4?t=58m10s) Outro



## The Nix Hour #44




## The Nix Hour #45




## The Nix Hour #46




## The Nix Hour #47




