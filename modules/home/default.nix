{
  username,
  ...
}:
{
  imports = [
    ./git.nix
    ./social.nix
    ./zen-browser.nix
    ./zed-editor.nix
    ./gaming.nix
    # ./flatpack.nix
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
}
