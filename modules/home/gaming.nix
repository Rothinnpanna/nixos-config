{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [

    # Elite Dangerous
    input-remapper
    edmarketconnector
    min-ed-launcher

    # Minecraft
    prismlauncher

    # Satisfactory
    satisfactorymodmanager
  ];
}
