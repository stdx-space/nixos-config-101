{ config, pkgs, lib, ... }:

{
  # nixos-generate-config doesn't detect mount options automatically
  fileSystems = {
    "/".options = [ "compress=zstd" ];
    "/home".options = [ "compress=zstd" ];
    "/nix".options = [ "compress=zstd" "noatime" ];
  };

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.plymouth.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Hong_Kong";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = { keyMap = "colemak"; };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.stommydx = {
    isNormalUser = true;
    extraGroups = [ "wheel" "storage" "docker" "networkmanager" ];
    packages = with pkgs; [ nixpkgs-fmt ];
    shell = pkgs.zsh;
    passwordFile = config.sops.secrets.password.path;
  };
  users.groups.storage = { };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    age
    ansible
    ansible-lint
    bat
    black
    btop
    cargo
    cfssl
    cloudflared
    cmake
    consul
    consul-template
    ctop
    dasel
    delta
    dig
    duf
    exa
    file
    ffmpeg
    gcc
    gnumake
    gping
    gh
    httpie
    iperf
    jq
    lazygit
    lolcat
    neofetch
    netcat
    nomad
    p7zip
    packer
    pandoc
    protobuf
    (python3.withPackages (pythonPkgs: with pythonPkgs; [
      ipython
      pandas
    ]))
    rclone
    rustc
    sops
    sshfs
    terraform
    tldr
    tree
    unzip
    vault
    wander
    wget
    youtube-dl
    zip
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.firewall.enable = false;
  networking.networkmanager = {
    enable = true;
    connectionConfig = {
      "connection.mdns" = 2;
    };
  };

  programs._1password.enable = true;
  programs.command-not-found.enable = false; # use nix-index instead
  programs.git.enable = true;
  programs.iotop.enable = true;
  programs.java.enable = true;
  programs.nix-index.enable = true;
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

  # Enable nix-ld
  # For running unpatched binaries such as VS Code remote SSH plugin server
  programs.nix-ld.enable = true;

  services.resolved = {
    enable = true;
    extraConfig = "MulticastDNS=yes";
  };
  services.openssh.enable = true;
  services.qemuGuest.enable = true;
  services.tailscale.enable = true;

  sops = {
    defaultSopsFile = ./secrets/secrets.yaml;
    age = {
      keyFile = "/etc/sops-nix/key.txt";
      generateKey = true;
    };
    secrets = {
      password = {
        neededForUsers = true;
      };
    };
  };

  virtualisation.docker = {
    enable = true;
    storageDriver = "btrfs";
  };

  zramSwap.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.11"; # Did you read the comment?

}
