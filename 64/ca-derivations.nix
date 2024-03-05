{ runCommand }:
rec {

  normal = runCommand "normal" {
  } ''
    echo hello > $out
  '';

  ca = runCommand "ca" {
    __contentAddressed = true;
    time = builtins.currentTime;
  } ''
    echo hello > $out
  '';

  showContents = runCommand "show" {} ''
    echo "Computing..."
    sleep 3
    cp ${ca} $out
  '';

}
