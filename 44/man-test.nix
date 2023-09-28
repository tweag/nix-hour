{ runCommand }:
runCommand "man-test" {} ''
  #mkdir -p $out/bin 
  #echo "echo hi" > $out/bin/myScript
  #chmod +x $out/bin/myScript

  #mkdir -p $out/bin

  mkdir -p $out/share/man/man1
  echo "manpage" > $out/share/man/man1/myScript.1.gz
''
