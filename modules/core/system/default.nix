{
  username,
  ...
}:
{
  imports = [
    ./bootloader.nix
    ./pipewire.nix

    ./nvidia.nix
    # (if (host == "PC") then ./nvidia.nix else "")
  ];

  users.users.${username} = {
    isNormalUser = true;
    description = username;
    extraGroups = ["networkmanager" "wheel" "wireshark" "dialout" "docker"];
  };

  nix = {
    settings = {
      trusted-users = [username];
      experimental-features = ["nix-command" "flakes"];
    };
  };
  nixpkgs.config.allowUnfree = true;

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 5";
    flake = "/home/${username}/nixos-config";
  };

  time.timeZone = "Europe/Copenhagen";
  i18n.defaultLocale = "en_GB.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ALL = "en_GB.UTF-8";
    LC_CTYPE = "en_GB.UTF-8";
    LC_ADDRESS = "da_DK.UTF-8";
    LC_IDENTIFICATION = "da_DK.UTF-8";
    LC_MEASUREMENT = "da_DK.UTF-8";
    LC_MESSAGES = "en_GB.UTF-8";
    LC_MONETARY = "da_DK.UTF-8";
    LC_NAME = "da_DK.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "da_DK.UTF-8";
    LC_TELEPHONE = "da_DK.UTF-8";
    LC_TIME = "en_GB.UTF-8";
    LC_COLLATE = "en_GB.UTF-8";
  };
}
