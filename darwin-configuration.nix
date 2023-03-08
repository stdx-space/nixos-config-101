{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    age
    ansible
    btop
    dig
    file
    gnumake
    jq
    netcat
    p7zip
    python3
    rclone
    sops
    sshfs
    tree
    unzip
    wget
    zip
  ];
  
  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
