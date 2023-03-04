{ config, pkgs, lib, ... }:

{  
  hardware.bluetooth.enable = true;
  hardware.logitech.wireless = {
    enable = true;
    enableGraphical = true;
  };
  hardware.pulseaudio.enable = false; # prevent pipewire conficting pulseaudio
  hardware.steam-hardware.enable = true;

  environment.systemPackages = with pkgs; [
    bottles
    discord
    goverlay
    heroic
    nerdfonts
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    mangohud
    moonlight-qt
    papirus-icon-theme
    pinta
    prismlauncher
    postman
    qgnomeplatform
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

  services.flatpak.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  services.printing.enable = true;
  services.saned.enable = true;
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  # virtualisation.virtualbox.host = {
  #   enable = true;
  #   enableExtensionPack = true;
  # };

  xdg.portal.enable = true;
}
