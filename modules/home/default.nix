{
  username,
  ...
}:
{
  imports = [
    ./git.nix
    ./social.nix
    ./niri.nix
    ./zen-browser.nix
    ./zed-editor.nix
    ./noctalia.nix
    # ./gaming.nix
    # ./flatpack.nix
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}
