{ rustPlatform }:
rustPlatform.buildRustPackage {
  name = "hello";

  src = ./.;
  cargoLock.lockFile = ./Cargo.lock;
}
