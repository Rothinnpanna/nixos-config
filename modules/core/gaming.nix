{
  pkgs,
  ...
}:
{
  programs.steam = {
    enable = true;

    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # hardware.openrazer.enable = true;
  # environment.systemPackages = with pkgs; [
  #   openrazer-daemon
  #   polychromatic
  # ];


  # https://help.wooting.io/article/147-configuring-device-access-for-wootility-under-linux-udev-rules
  services.udev.packages = with pkgs; [
    wooting-udev-rules
  ];


}
