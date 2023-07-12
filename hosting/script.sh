windowName='Nix Hour \| Jitsi Meet — Mozilla Firefox'

begin() {
  dunstctl set-paused true

  while true; do
    xmobar-custom 0
  done &

  while true; do
    xmobar-custom 1
  done &

  if ! xdotool search --name "$windowName"; then
    firefox --new-window https://meet.jit.si/nix-hour
  fi
  echo -n "Please make the jitsi window floating, full screen it using F11, then press enter"
  read
  xdotool search --name "$windowName" windowsize %1 2254 1267 windowmove %1 0 30
  echo "Running.."
}

end() {
  kill $(jobs -p)
  dunstctl set-paused false
  rm -rf "$tmp"
}

begin
trap end exit
while true; do
  sleep 10
done

