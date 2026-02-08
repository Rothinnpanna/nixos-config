{
  pkgs,
  ...
}:
{
  programs.vesktop = {
    enable = true;
  };

  home.packages = with pkgs; [
    beeper
  ];
}
