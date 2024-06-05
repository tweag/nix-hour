# These values depend on your circumstances
{
  # Set this to match your users uid (run `id`)
  # Makes the files in this directory editable within the VM without sudo
  users.users.me.uid = 1001;

  # Set this to your own layout (run `setxkbmap -query`)
  services.xserver.xkb = {
    layout = "us";
    variant = "dvp";
    options = "caps:backspace";
  };

  # Set this to a portion of your host machine's resources
  virtualisation.vmVariant.virtualisation = {
    # 6 cores
    cores = 6;
    # 16GB RAM
    memorySize = 16 * 1024;
  };

  # Set this to your timezone (run `tzselect`)
  time.timeZone = "Europe/Zurich";
}
