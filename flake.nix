{
  description = "Rothinnpanna's NixOS Config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      # IMPORTANT: we're using "libgbm" and is only available in unstable so ensure
      # to have it up-to-date or simply don't specify the nixpkgs input
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri-flake.url = "github:sodiboo/niri-flake";

    # nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    # nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=v0.7.0";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    niri-flake,
    ...
  }: {
    nixosConfigurations = {
      PC = let
        username = "rothinnpanna";
        system = "x86_64-linux";

        specialArgs = {
          inherit username;
          inherit system;
          inherit inputs;

          pkgs-unstable = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        };
      in nixpkgs.lib.nixosSystem {
        inherit specialArgs;

        modules = [
          # (import ./overlays)

          ./hosts/PC/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.backupFileExtension = "backup";

            home-manager.extraSpecialArgs = specialArgs;
            home-manager.users.${username} = import ./hosts/PC/home.nix;
          }
        ];
      };

      Framework-13 = let
        username = "rothinnpanna";
        system = "x86_64-linux";

        specialArgs = {
          inherit username;
          inherit system;
          inherit inputs;

          pkgs-unstable = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        };
      in nixpkgs.lib.nixosSystem {
        inherit specialArgs;

        modules = [
          # (import ./overlays)

          ./hosts/Framework-13/configuration.nix

          niri-flake.nixosModules.niri

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.backupFileExtension = "backup";

            home-manager.extraSpecialArgs = specialArgs;
            home-manager.users.${username} = import ./hosts/Framework-13/home.nix;
          }
        ];
      };
    };
  };
}
