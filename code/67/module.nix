{ pkgs, ... }: {
  programs.neovim.configure = {
    customRC = builtins.readFile ./lspconfig.lua;
    packages.myVimPackage = with pkgs.vimPlugins; {
      start = [ nvim-lspconfig ];
    };
  };
}
