{
  description = "NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, darwin, home-manager, sops-nix, nixos-generators, nixpkgs }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations = {
        nixos101 = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
            ./hosts/nixos101/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.stommydx = {
                imports = [
                  ./home.nix
                ];
              };
            }
            sops-nix.nixosModules.sops
          ];
        };
        nixos102 = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.desktop.nix
            ./hosts/nixos102/configuration.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.stommydx = {
                imports = [
                  ./home.desktop.nix
                ];
              };
            }
            sops-nix.nixosModules.sops
          ];
        };
      };
      darwinConfigurations = {
        macos101 = darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          modules = [
            ./darwin-configuration.nix
            ./hosts/macos101/darwin-configuration.nix
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.stommydx = import ./home.nix;
            }
          ];
        };
      };
      packages.x86_64-linux = {
        iso = nixos-generators.nixosGenerate {
          inherit system;
          modules = [
            ./configuration.minimal.nix
          ];
          format = "install-iso";
        };
      };
    };
}
