{
  pkgs,
  pkgs-stable,
  ...
}:
{
  imports = [
    ../../modules/home
  ];

  home.packages = (with pkgs; [
    # LibreOffice
    libreoffice-fresh
    hunspell
    hunspellDicts.en_GB-large
    hunspellDicts.da-dk

    obsidian

    peazip

    pinta
    drawy
    krita
    gimp
    vlc
    handbrake
    darktable
    # davinci-resolve
    blockbench

    orca-slicer

    wootility
    scrcpy

    spotify

  ]) ++ (with pkgs-stable; [

    # stremio

  ]);





}
