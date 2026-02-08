{
  pkgs,
  ...
}:
{
  imports = [
    ./system
    ./fonts.nix
    ./1password.nix
    ./gaming.nix
    # ./flatpack.nix
  ];

  environment.systemPackages = with pkgs; [
    wine
    winetricks
  ];

  # KDE Plasma
  services = {
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    desktopManager.plasma6.enable = true;
  };

  programs.bash.shellAliases = {
    "c"  = "clear";
    ".." = "cd ..";
  };



  # Enable CUPS to print documents.
  services.printing.enable = true;
  # autodiscovery of network printers
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}
