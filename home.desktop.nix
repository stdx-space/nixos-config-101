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
  };

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
