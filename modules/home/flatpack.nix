{
  inputs,
  ...
}:
{
  imports = [ inputs.nix-flatpak.homeManagerModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    packages = [
      # rec {
      #   appId = "com.hypixel.HytaleLauncher";
      #   sha256 = "0pcibq1lp17knbxwqnb758c9zib7jfryb8y3kacyknn2ig55yk29";
      #   bundle = "${pkgs.fetchurl {
      #     url = "https://launcher.hytale.com/builds/release/linux/amd64/hytale-launcher-latest.flatpak";
      #     inherit sha256;
      #   }}";
      # }
      {
        bundle = "file:///home/rothinnpanna/Documents/hytale-launcher-latest.flatpak";
        appId = "com.hypixel.HytaleLauncher";
        sha256 = "0pcibq1lp17knbxwqnb758c9zib7jfryb8y3kacyknn2ig55yk29";
      }
    ];
  };
}
