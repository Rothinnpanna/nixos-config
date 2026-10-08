{
  pkgs,
  ...
}:
{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
      roboto
      roboto-serif
      comic-mono
    ];

    # fontconfig.defaultFonts = {
    #   sansSerif = ["Roboto"];
    #   serif = ["Roboto Serif"];
    #   monospace = ["JetBrains Mono"];
    # };
  };
}
