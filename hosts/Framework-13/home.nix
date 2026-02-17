{
  pkgs,
  ...
}:
{
  imports = [
    ../../modules/home
  ];

  home.packages = with pkgs; [
    # LibreOffice
    libreoffice-fresh
    hunspell
    hunspellDicts.en_GB-large
    hunspellDicts.da-dk

    peazip

    pinta
    krita
    #darktable

    # orca-slicer

    spotify
  ];


}
