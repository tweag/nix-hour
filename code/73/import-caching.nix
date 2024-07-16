let

  fun1 = import ./comp.nix;
  fun2 = import ./comp.nix;

  #result1 = import ./comp.nix;
  #result2 = import ./comp.nix;
  
in
fun1 1 + fun2 2

