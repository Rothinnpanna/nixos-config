{
  inputs,
  niri-flake,
  pkgs,
  ...
}:
{
  # nixpkgs.overlays = [ niri-flake.overlays.niri ];
  programs.niri = {
    enable = true;
    package = pkgs.niri;
  };
  # niri-flake.cache.enable = true;
}
