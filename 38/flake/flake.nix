{
  outputs = { nixpkgs, ... }: {
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    foo.bar.baz.qux = 10;
  };
}
