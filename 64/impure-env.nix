{ runCommand }:

runCommand "impure-env" {
  impureEnvVars = [ "foo" ];

  outputHash = "sha256-WJG1tSLV3whtD/CxEPvZ0hu0/HFjrzTQgoai6Eb2vgM=";
  outputHashAlgo = "sha256";
  outputHashMode = "flat";
} ''
  echo "Env var foo is: $foo"
  echo hello > $out
''
