{ config, pkgs, lib, ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # nixos-generate-config doesn't detect mount options automatically
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  zramSwap.enable = true;

  networking.hostName = "nixos101";
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Hong_Kong";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = { keyMap = "colemak"; };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.stommydx = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [ nixpkgs-fmt ];
    shell = pkgs.zsh;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    ansible
    age
    bat
    btop
    cargo
    cmake
    ctop
    delta
    dig
    duf
    gcc
    gnumake
    gh
    jq
    neofetch
    p7zip
    python3
    rustc
    sops
    sshfs
    terraform
    tldr
    tree
    unzip
    wander
    zip
  ];

  programs._1password.enable = true;
  programs.git.enable = true;
  programs.iotop.enable = true;
  programs.java.enable = true;
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
  };
  programs.npm.enable = true;
  programs.thefuck.enable = true;
  programs.tmux = {
    enable = true;
    terminal = "screen-256color";
  };
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh.enable = true;
    autosuggestions.enable = true;
  };

  # List services that you want to enable:

  services.resolved.enable = true;
  services.openssh.enable = true;
  services.qemuGuest.enable = true;
  services.tailscale.enable = true;

  networking.firewall.enable = false;

  virtualisation.docker = {
    enable = true;
    storageDriver = "btrfs";
  };

  # Enable nix-ld
  # For running unpatched binaries such as VS Code remote SSH plugin server
  programs.nix-ld.enable = true;

  sops = {
    defaultSopsFile = ./secrets/secrets.yaml;
    age = {
      keyFile = "/etc/sops-nix/key.txt";
      generateKey = true;
    };
    secrets = {
      password = {};
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
