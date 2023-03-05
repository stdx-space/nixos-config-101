{ config, pkgs, lib, ... }:

{
  imports =
    [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../../modules/stdx-code-server.nix
    ];
  networking.hostName = "nixos102";
  services.stdx-code-server = {
    enable = true;
    instances = {
      stommydx = { };
    };
  };
}
