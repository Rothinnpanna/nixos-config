{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [

    # Elite Dangerous
    # input-remapper
    edmarketconnector
    # edhm-ui
    min-ed-launcher


    # Minecraft
    prismlauncher

    # Satisfactory
    satisfactorymodmanager


    osu-lazer-bin
  ];
}
