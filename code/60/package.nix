{ emacs, fetchzip }:

# A patched Nixpkgs is used to have the correct patch: https://github.com/tweag/nixpkgs/commit/fe18dcfc53e7fbd7ce9249b95633c2702989d8ba
emacs.overrideAttrs (prevAttrs: {
  version = "29.3";
  src = fetchzip {
    url = "https://git.savannah.gnu.org/cgit/emacs.git/snapshot/de020255a5cef4349d786fceb19481352c49557b.tar.gz";
    sha256 = "sha256-3gMyLnqfGQygz+2jhNOKzz6g7TgohtXPnMY/BCEqboU=";
  };
})
