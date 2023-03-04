{ config, pkgs, lib, ... }:

{
  boot.extraModulePackages = with config.boot.kernelPackages; [ v4l2loopback ];

  hardware.bluetooth.enable = true;
  hardware.logitech.wireless = {
    enable = true;
    enableGraphical = true;
  };
  hardware.pulseaudio.enable = false; # prevent pipewire conficting pulseaudio
  hardware.steam-hardware.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    gnome-console
  ];
  environment.systemPackages = with pkgs; [
    bottles
    discord
    goverlay
    heroic
    mangohud
    moonlight-qt
    mpv
    nerdfonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    obs-studio
    papirus-icon-theme
    pinta
    prismlauncher
    postman
    remmina
    signal-desktop
    slack
    solaar
    spotify
    tdesktop
    # teams
    transmission
    ubuntu_font_family
    via
    vial
    vlc
    vscode
    whatsapp-for-linux
    # yubikey-manager-qt
    yuzu-mainline
  ];

  programs._1password-gui.enable = true;
  programs.adb.enable = true;
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
  };
  programs.gamemode.enable = true;
  programs.gnome-terminal.enable = true;

  qt.platformTheme = "gnome";

  services.flatpak.enable = true;
  services.gnome.gnome-browser-connector.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };
  services.printing.enable = true;
  services.saned.enable = true;
  services.xserver = {
    enable = true;
    xkbVariant = "colemak";
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # virtualisation.virtualbox.host = {
  #   enable = true;
  #   enableExtensionPack = true;
  # };

  xdg.portal.enable = true;
}
