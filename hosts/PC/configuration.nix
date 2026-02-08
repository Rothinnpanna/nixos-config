{
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/core
  ];

  networking = {
    hostName = "PC";
    networkmanager.enable = true;
  };

  # Keymap
  services.xserver.xkb = { # Configure keymap in X11
    layout = "dk";
    variant = "nodeadkeys";
  };
  # Configure console keymap
  console.keyMap = "dk-latin1";


  # NixOS system - WARNING: DO NOT CHANGE
  system.stateVersion = "25.05";
}
