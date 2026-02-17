{
  niri-flake,
  pkgs,
  ...
}:
{
  nixpkgs.overlays = [ niri-flake.overlays.niri ];
  programs.niri = {
    enable = true;
    package = pkgs.niri-stable;
  };
  niri-flake.cache.enable = true;
}
