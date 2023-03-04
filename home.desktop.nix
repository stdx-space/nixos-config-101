{ config, pkgs, lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "us+colemak" ]) ];
    };
    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-theme = "Adwaita-dark";
      icon-theme = "Papirus-Dark";
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "close,minimize:appmenu";
    };
    "org/gnome/mutter" = {
      check-alive-timeout = mkUint32 30000;
    };
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [ "gsconnect@andyholmes.github.io" "user-theme@gnome-shell-extensions.gcampax.github.com" "dash-to-dock@micxgx.gmail.com" "arcmenu@arcmenu.com" "blur-my-shell@aunetx" "appindicatorsupport@rgcjonas.gmail.com" ];
    };
    "org/gnome/shell/extensions/arcmenu" = {
      distro-icon = 0;
      menu-layout = "Redmond";
      menu-button-appearance = "Icon_Text";
      menu-button-icon = "Distro_Icon";
    };
    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      click-action = "minimize-or-previews";
      custom-theme-shrink = true;
      dash-max-icon-size = 40;
      dock-position = "BOTTOM";
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      running-indicator-dominant-color = true;
      running-indicator-style = "CILIORA";
      show-favorites = true;
      show-mounts = false;
      show-trash = false;
    };
    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "[<(uint32 2, <('Hong Kong', 'VHHH', true, [(0.38979019379430269, 1.9928751117510946)], [(0.38949931722116538, 1.9928751117510946)])>)>]";
    };
  };

  home.file.".face".source = ./assets/propic.jpg;

  home.packages = with pkgs; (
    with gnomeExtensions; [
      appindicator
      arcmenu
      blur-my-shell
      dash-to-dock
      gsconnect
    ]
  );

  services.gnome-keyring.enable = true;
}
