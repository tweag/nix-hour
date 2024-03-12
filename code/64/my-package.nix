{ runCommand }: {
 
  a = runCommand "a" {
    time = builtins.currentTime;
  } ''
    sleep 100
    touch $out
  '';
  b = runCommand "b" {
    time = builtins.currentTime;
  } ''
    sleep 100
    touch $out
  '';
  c = runCommand "c" {
    time = builtins.currentTime;
  } ''
    sleep 100
    touch $out
  '';
  
}
