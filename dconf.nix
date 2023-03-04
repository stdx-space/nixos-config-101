# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/";
      saved-view = "/org/gnome/";
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/github/maoschanz/drawing" = {
      default-rgba = [ "0.0" "0.0" "0.0" "1.0" ];
      devel-only = false;
      last-active-tool = "crop";
      last-version = "1.0.1";
      maximized = false;
    };

    "com/github/maoschanz/drawing/tools-options" = {
      last-active-shape = "polygon";
      last-delete-replace = "alpha";
      last-font-name = "Sans";
      last-left-rgba = [ "0.0" "0.0" "0.0" "1.0" ];
      last-right-rgba = [ "0.8" "0.0" "0.0" "1.0" ];
      last-shape-filling = "empty";
      last-size = 5;
      last-text-background = "outline";
      use-antialiasing = true;
    };

    "org/fedorahosted/background-logo-extension" = {
      logo-position = "bottom-right";
    };

    "org/gnome/Connections" = {
      first-run = false;
    };

    "org/gnome/GWeather" = {
      temperature-unit = "centigrade";
    };

    "org/gnome/GWeather4" = {
      temperature-unit = "centigrade";
    };

    "org/gnome/Totem" = {
      active-plugins = [ "vimeo" "variable-rate" "skipto" "screenshot" "screensaver" "save-file" "rotation" "recent" "movie-properties" "open-directory" "mpris" "autoload-subtitles" "apple-trailers" ];
      subtitle-encoding = "UTF-8";
    };

    "org/gnome/Weather" = {
      locations = "[<(uint32 2, <('Hong Kong', 'VHHH', true, [(0.38979019379430269, 1.9928751117510946)], [(0.38949931722116538, 1.9928751117510946)])>)>]";
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 960 600 ];
    };

    "org/gnome/boxes" = {
      first-run = false;
      view = "icon-view";
      window-maximized = false;
      window-position = [ 26 23 ];
      window-size = [ 1280 815 ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      word-size = 64;
    };

    "org/gnome/clocks" = {
      world-clocks = "@aa{sv} []";
    };

    "org/gnome/clocks/state/window" = {
      maximized = false;
      panel-id = "world";
      size = mkTuple [ 870 690 ];
    };

    "org/gnome/control-center" = {
      last-panel = "background";
      window-state = mkTuple [ 1146 816 ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/input-sources" = {
      mru-sources = [ (mkTuple [ "xkb" "us+colemak" ]) (mkTuple [ "xkb" "us" ]) ];
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "us+colemak" ]) ];
      xkb-options = [];
    };

    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-theme = "Adwaita-dark";
      icon-theme = "Papirus-Dark";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/media-handling" = {
      autorun-never = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-software" "firefox" "org-gnome-nautilus" "org-gnome-terminal" "org-freedesktop-problems-applet" "steam" "org-gnome-extensions-desktop" "telegramdesktop" "google-chrome" "us-zoom-zoom" "com-usebottles-bottles" "org-gnome-chromegnomeshell" "org-gnome-boxes" "org-gnome-settings" "com-github-eneshecan-whatsappforlinux" "com-discordapp-discord" "org-signal-signal" "code" "xdg-desktop-portal-gnome" "jetbrains-toolbox" "com-microsoft-teams" "com-mattjakeman-extensionmanager-desktop" "1password" "org-gnome-shell-extensions-gsconnect" "jetbrains-webstorm" "org-gnome-fileroller" "org-gnome-evince" "org-telegram-desktop" "gnome-network-panel" "org-remmina-remmina" "gnome-printers-panel" "net-davidotek-pupgui2" "org-gnome-baobab" ];
    };

    "org/gnome/desktop/notifications/application/1password" = {
      application-id = "1password.desktop";
    };

    "org/gnome/desktop/notifications/application/code" = {
      application-id = "code.desktop";
    };

    "org/gnome/desktop/notifications/application/com-discordapp-discord" = {
      application-id = "com.discordapp.Discord.desktop";
    };

    "org/gnome/desktop/notifications/application/com-github-eneshecan-whatsappforlinux" = {
      application-id = "com.github.eneshecan.WhatsAppForLinux.desktop";
    };

    "org/gnome/desktop/notifications/application/com-mattjakeman-extensionmanager-desktop" = {
      application-id = "com.mattjakeman.ExtensionManager.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/com-microsoft-teams" = {
      application-id = "com.microsoft.Teams.desktop";
    };

    "org/gnome/desktop/notifications/application/com-usebottles-bottles" = {
      application-id = "com.usebottles.bottles.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-printers-panel" = {
      application-id = "gnome-printers-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/google-chrome" = {
      application-id = "google-chrome.desktop";
    };

    "org/gnome/desktop/notifications/application/jetbrains-toolbox" = {
      application-id = "jetbrains-toolbox.desktop";
    };

    "org/gnome/desktop/notifications/application/jetbrains-webstorm" = {
      application-id = "jetbrains-webstorm.desktop";
    };

    "org/gnome/desktop/notifications/application/net-davidotek-pupgui2" = {
      application-id = "net.davidotek.pupgui2.desktop";
    };

    "org/gnome/desktop/notifications/application/org-freedesktop-problems-applet" = {
      application-id = "org.freedesktop.problems.applet.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-baobab" = {
      application-id = "org.gnome.baobab.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-boxes" = {
      application-id = "org.gnome.Boxes.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-chromegnomeshell" = {
      application-id = "org.gnome.ChromeGnomeShell.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-evince" = {
      application-id = "org.gnome.Evince.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions-desktop" = {
      application-id = "org.gnome.Extensions.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-fileroller" = {
      application-id = "org.gnome.FileRoller.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-shell-extensions-gsconnect" = {
      application-id = "org.gnome.Shell.Extensions.GSConnect.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-software" = {
      application-id = "org.gnome.Software.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-terminal" = {
      application-id = "org.gnome.Terminal.desktop";
    };

    "org/gnome/desktop/notifications/application/org-remmina-remmina" = {
      application-id = "org.remmina.Remmina.desktop";
    };

    "org/gnome/desktop/notifications/application/org-signal-signal" = {
      application-id = "org.signal.Signal.desktop";
    };

    "org/gnome/desktop/notifications/application/org-telegram-desktop" = {
      application-id = "org.telegram.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
    };

    "org/gnome/desktop/notifications/application/telegramdesktop" = {
      application-id = "telegramdesktop.desktop";
    };

    "org/gnome/desktop/notifications/application/us-zoom-zoom" = {
      application-id = "us.zoom.Zoom.desktop";
    };

    "org/gnome/desktop/notifications/application/xdg-desktop-portal-gnome" = {
      application-id = "xdg-desktop-portal-gnome.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "close,minimize:appmenu";
    };

    "org/gnome/eog/view" = {
      background-color = "rgb(0,0,0)";
      use-background-color = true;
    };

    "org/gnome/evince/default" = {
      window-ratio = mkTuple [ 2.286335942544932 1.282394769736246 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/file-roller/dialogs/extract" = {
      recreate-folders = true;
      skip-newer = false;
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 508;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 709;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "processes";
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = true;
      show-whose-processes = "user";
      window-state = mkTuple [ 880 645 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-0-visible = true;
      col-0-width = 311;
      columns-order = [ 0 1 2 3 4 6 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 8;
      sort-order = 0;
    };

    "org/gnome/libgnomekbd/preview" = {
      height = 611;
      width = 1464;
      x = 240;
      y = 135;
    };

    "org/gnome/login-screen" = {
      enable-fingerprint-authentication = true;
      enable-password-authentication = true;
      enable-smartcard-authentication = false;
    };

    "org/gnome/maps" = {
      map-type = "MapsStreetSource";
      transportation-type = "pedestrian";
      window-maximized = true;
    };

    "org/gnome/mutter" = {
      check-alive-timeout = mkUint32 30000;
      dynamic-workspaces = false;
      overlay-key = "Super_L";
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "standard";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1247 691 ];
      maximized = false;
    };

    "org/gnome/nm-applet/eap/87d7e2e9-93d0-3b7b-bb4e-a01ff334645e" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/portal/filechooser/com/discordapp/Discord" = {
      last-folder-path = "/home/stommydx/Pictures/Screenshots";
    };

    "org/gnome/portal/filechooser/com/github/PintaProject/Pinta" = {
      last-folder-path = "/home/stommydx/Downloads";
    };

    "org/gnome/portal/filechooser/org/signal/Signal" = {
      last-folder-path = "/home/stommydx/Downloads";
    };

    "org/gnome/portal/filechooser/org/yuzu_emu/yuzu" = {
      last-folder-path = "/home/stommydx/Downloads/Games";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "suspend";
      sleep-inactive-ac-timeout = 3600;
      sleep-inactive-ac-type = "nothing";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'org.fedoraproject.MediaWriter.desktop': <{'position': <0>}>, 'org.gnome.Contacts.desktop': <{'position': <1>}>, 'org.gnome.Weather.desktop': <{'position': <2>}>, 'org.gnome.clocks.desktop': <{'position': <3>}>, 'org.gnome.Maps.desktop': <{'position': <4>}>, 'libreoffice-calc.desktop': <{'position': <5>}>, 'org.gnome.Photos.desktop': <{'position': <6>}>, 'org.gnome.Totem.desktop': <{'position': <7>}>, 'org.gnome.Calculator.desktop': <{'position': <8>}>, 'libreoffice-impress.desktop': <{'position': <9>}>, 'simple-scan.desktop': <{'position': <10>}>, 'org.gnome.Settings.desktop': <{'position': <11>}>, 'gnome-system-monitor.desktop': <{'position': <12>}>, 'org.gnome.Boxes.desktop': <{'position': <13>}>, 'Utilities': <{'position': <14>}>, 'libreoffice-writer.desktop': <{'position': <15>}>, 'yelp.desktop': <{'position': <16>}>, 'org.gnome.Cheese.desktop': <{'position': <17>}>, 'org.gnome.TextEditor.desktop': <{'position': <18>}>, 'org.gnome.Tour.desktop': <{'position': <19>}>, '1password.desktop': <{'position': <20>}>}, {'transmission-gtk.desktop': <{'position': <0>}>, 'code.desktop': <{'position': <1>}>, 'com.github.maoschanz.drawing.desktop': <{'position': <2>}>, 'org.inkscape.Inkscape.desktop': <{'position': <3>}>, 'nvim.desktop': <{'position': <4>}>, 'com.obsproject.Studio.desktop': <{'position': <5>}>, 'org.freedesktop.Piper.desktop': <{'position': <6>}>, 'solaar.desktop': <{'position': <7>}>, 'steam.desktop': <{'position': <8>}>, 'btrfs-assistant.desktop': <{'position': <9>}>, 'vlc.desktop': <{'position': <10>}>, 'com.github.xournalpp.xournalpp.desktop': <{'position': <11>}>, 'ykman-gui.desktop': <{'position': <12>}>, 'org.gnome.Calendar.desktop': <{'position': <13>}>, 'org.corectrl.corectrl.desktop': <{'position': <14>}>, 'com.mattjakeman.ExtensionManager.desktop': <{'position': <15>}>, 'google-chrome.desktop': <{'position': <16>}>, 'chrome-hmjkmjkepdijhoojdojkdfohbdgmmhki-Default.desktop': <{'position': <17>}>, 'com.microsoft.Teams.desktop': <{'position': <18>}>, 'virtualbox.desktop': <{'position': <19>}>, 'com.github.tchx84.Flatseal.desktop': <{'position': <20>}>, 'com.getpostman.Postman.desktop': <{'position': <21>}>, 'net.davidotek.pupgui2.desktop': <{'position': <22>}>, 'com.skype.Client.desktop': <{'position': <23>}>}, {'org.gnome.Software.desktop': <{'position': <0>}>, 'io.github.benjamimgois.goverlay.desktop': <{'position': <1>}>, 'virt-manager.desktop': <{'position': <2>}>, 'com.github.eneshecan.WhatsAppForLinux.desktop': <{'position': <3>}>, 'us.zoom.Zoom.desktop': <{'position': <4>}>, 'jetbrains-toolbox.desktop': <{'position': <5>}>, 'org.pipewire.Helvum.desktop': <{'position': <6>}>, 'io.dbeaver.DBeaverCommunity.desktop': <{'position': <7>}>, 'com.heroicgameslauncher.hgl.desktop': <{'position': <8>}>, 'jd-gui.desktop': <{'position': <9>}>, 'com.mongodb.Compass.desktop': <{'position': <10>}>, 'com.moonlight_stream.Moonlight.desktop': <{'position': <11>}>, 'org.prismlauncher.PrismLauncher.desktop': <{'position': <12>}>, 'org.remmina.Remmina.desktop': <{'position': <13>}>, 'org.gnome.Rhythmbox3.desktop': <{'position': <14>}>, 'org.telegram.desktop.desktop': <{'position': <15>}>, 'jetbrains-webstorm.desktop': <{'position': <16>}>, 'btop.desktop': <{'position': <17>}>, 'org.gnome.NetworkDisplays.desktop': <{'position': <18>}>, 'scrcpy.desktop': <{'position': <19>}>, 'org.yuzu_emu.yuzu.desktop': <{'position': <20>}>, 'appimagekit_67232e8148fb7febca087ae43d248f31.desktop': <{'position': <21>}>, 'appimagekit_0c828f2a72186bb7745427857bc867f1.desktop': <{'position': <22>}>, 'appimagekit_389f597a1cf5e699cc443f45a311a978.desktop': <{'position': <23>}>}, {'appimagekit_3cd059879ebf3010a17b49c2b252219f.desktop': <{'position': <0>}>}]";
      command-history = [ "r" ];
      disable-user-extensions = false;
      disabled-extensions = [ "ubuntu-dock@ubuntu.com" ];
      enabled-extensions = [ "background-logo@fedorahosted.org" "gsconnect@andyholmes.github.io" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "sound-output-device-chooser@kgshank.net" "dash-to-dock@micxgx.gmail.com" "arcmenu@arcmenu.com" "blur-my-shell@aunetx" "appindicatorsupport@rgcjonas.gmail.com" "freon@UshakovVasilii_Github.yahoo.com" ];
      favorite-apps = [ "firefox.desktop" "org.gnome.Terminal.desktop" "org.gnome.Nautilus.desktop" "org.signal.Signal.desktop" "com.discordapp.Discord.desktop" "com.spotify.Client.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "42.0";
    };

    "org/gnome/shell/extensions/arcmenu" = {
      arcmenu-custom-hotkey = [ "<Super>F4" ];
      distro-icon = 2;
      menu-background-color = "rgba(48,48,49,0.98)";
      menu-border-color = "rgb(60,60,60)";
      menu-button-appearance = "Icon_Text";
      menu-button-icon = "Distro_Icon";
      menu-foreground-color = "rgb(223,223,223)";
      menu-hotkey-type = "Custom";
      menu-item-active-bg-color = "rgb(25,98,163)";
      menu-item-active-fg-color = "rgb(255,255,255)";
      menu-item-hover-bg-color = "rgb(21,83,158)";
      menu-item-hover-fg-color = "rgb(255,255,255)";
      menu-layout = "Redmond";
      menu-separator-color = "rgba(255,255,255,0.1)";
      pinned-app-list = [ "Firefox" "" "firefox.desktop" "Files" "" "org.gnome.Nautilus.desktop" "Terminal" "" "org.gnome.Terminal.desktop" "ArcMenu Settings" "ArcMenu_ArcMenuIcon" "gnome-extensions prefs arcmenu@arcmenu.com" ];
      prefs-visible-page = 0;
      recently-installed-apps = [ "discord.desktop" "jetbrains-gateway.desktop" "appimagekit_a51ff50007779d4cc0ad71105c37ddcd.desktop" "appimagekit_225d52a0b3d8b8dfe5dfb594c1063bff.desktop" "appimagekit_6c2708608904ac8ed0f0a6b1e4a83c91.desktop" "appimagekit_eb1ac421583284ea20c3953241d31ea6.desktop" "appimagekit_67232e8148fb7febca087ae43d248f31.desktop" "appimagekit_0c828f2a72186bb7745427857bc867f1.desktop" ];
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      applications-blur = false;
      brightness = 0.6;
      dash-to-dock-blur = false;
      overview-blur = true;
      panel-blur = false;
      panel-brightness = 0.4;
      panel-customize = true;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = false;
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      style-components = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = false;
      brightness = 0.2;
      customize = true;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.2;
      click-action = "minimize-or-previews";
      custom-theme-running-dots-border-color = "rgb(255,255,255)";
      custom-theme-running-dots-color = "rgb(255,255,255)";
      custom-theme-shrink = true;
      dash-max-icon-size = 40;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      max-alpha = 0.8;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "DP-1";
      running-indicator-dominant-color = true;
      running-indicator-style = "CILIORA";
      show-favorites = true;
      show-mounts = false;
      show-trash = false;
      transparency-mode = "FIXED";
    };

    "org/gnome/shell/extensions/freon" = {
      hot-sensors = [ "__average__" ];
      use-drive-smartctl = true;
      use-gpu-aticonfig = false;
    };

    "org/gnome/shell/extensions/gsconnect" = {
      devices = [ "c8929870d2757d53" ];
      enabled = true;
      id = "ea2e218d-5c88-4fec-8f96-a919c1cfdd9d";
      name = "tommy-FedoraPCdx";
    };

    "org/gnome/shell/extensions/gsconnect/device/494506c1ad69f076" = {
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://10.100.12.132:1716";
      name = "Samsung Galaxy A80";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "photo" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/494506c1ad69f076/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/494506c1ad69f076/plugin/notification" = {
      applications = ''
        {"Printers":{"iconName":"org.gnome.Settings-printers-symbolic","enabled":true},"Evolution Alarm Notify":{"iconName":"appointment-soon","enabled":true},"Solaar":{"iconName":"solaar","enabled":true},"Software":{"iconName":"org.gnome.Software","enabled":true},"Date & Time":{"iconName":"org.gnome.Settings-time-symbolic","enabled":true},"Rhythmbox":{"iconName":"org.gnome.Rhythmbox3","enabled":true},"Disk Usage Analyzer":{"iconName":"org.gnome.baobab","enabled":true},"Power":{"iconName":"org.gnome.Settings-power-symbolic","enabled":true},"Color":{"iconName":"org.gnome.Settings-color-symbolic","enabled":true},"Telegram Desktop":{"iconName":"telegram","enabled":true},"Spotify":{"iconName":"com.spotify.Client","enabled":true},"Files":{"iconName":"org.gnome.Nautilus","enabled":true},"Clocks":{"iconName":"org.gnome.clocks","enabled":true},"Archive Manager":{"iconName":"org.gnome.ArchiveManager","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/494506c1ad69f076/plugin/share" = {
      receive-directory = "/home/stommydx/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/device/c8929870d2757d53" = {
      certificate-pem = "-----BEGIN CERTIFICATE-----\nMIIC9zCCAd+gAwIBAgIBATANBgkqhkiG9w0BAQsFADA/MRkwFwYDVQQDDBBjODky\nOTg3MGQyNzU3ZDUzMRQwEgYDVQQLDAtLREUgQ29ubmVjdDEMMAoGA1UECgwDS0RF\nMB4XDTIxMDkwNjE2MDAwMFoXDTMxMDkwNjE2MDAwMFowPzEZMBcGA1UEAwwQYzg5\nMjk4NzBkMjc1N2Q1MzEUMBIGA1UECwwLS0RFIENvbm5lY3QxDDAKBgNVBAoMA0tE\nRTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANbe7tP4xLRGRXEF725m\nJHKJz8+UmMYQ3iLXL2OkKTVLTN7hlDY0FWUkVWD9vTGvaTplmHMOrcRSIf5MNVFG\nG7fe6qB+pxk6pnAME8GrutnXYqzgJcy/LGzN/8BBi1ldnQTYMloC5PfERwx3peKS\n1t1hUOCdW4H7VCNQ3xIrcnSO8gdmr8dYyA2W3dMlkqkWChWxK+2S7IiavnezfG6F\nVu0PAq7wcdnKKQq8TGZX1JbZBiseh473vv03wrh1ok4RWJXBjSiAYf+0XPiWh+jk\niP25gAupOVd0PTgUKxwHPtd3oLEF8xE4ABjVYOX+7wJlZmNP+ztkDZ6ajonnhZHz\nqhsCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEAACjWy0euCxno96Q2TolvbqaAGdVo\nW+ZOkATU0hm2CcUZ8MuYBxCe+vL6SzVBDBsoZhuYkB4f3999XaUxLyV9ZUVkTYfp\nAmrfNc9NH/AfVpT5O3V/EsJ4fD73fE4z7mLi2X9PoIQNXW9wHGRLuURRIYl4xDzb\nqc0YxavmoFfAqEnSfiPZXElBO6F6tsAFOzsva6iM3/pwfN9+6mPuNGZ3p01d5cAP\nyNEdB/3r3Kx+yN3AZUXd5szc3fbddQzFbaPW/ai+QR3WDAb2J+sgwXSTC570kJK9\nzkqK7kgywVQz5mqgt9wkcjre3uiqGMgzXOSKH9rivqt1aVCrbxXbYEo84A==\n-----END CERTIFICATE-----\n";
      incoming-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report.request" "kdeconnect.contacts.request_all_uids_timestamps" "kdeconnect.contacts.request_vcards_by_uid" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.action" "kdeconnect.notification.reply" "kdeconnect.notification.request" "kdeconnect.photo.request" "kdeconnect.ping" "kdeconnect.runcommand" "kdeconnect.sftp.request" "kdeconnect.share.request" "kdeconnect.share.request.update" "kdeconnect.sms.request" "kdeconnect.sms.request_attachment" "kdeconnect.sms.request_conversation" "kdeconnect.sms.request_conversations" "kdeconnect.systemvolume" "kdeconnect.telephony.request" "kdeconnect.telephony.request_mute" ];
      last-connection = "lan://10.100.113.22:1716";
      name = "SM-S9060";
      outgoing-capabilities = [ "kdeconnect.battery" "kdeconnect.battery.request" "kdeconnect.bigscreen.stt" "kdeconnect.clipboard" "kdeconnect.clipboard.connect" "kdeconnect.connectivity_report" "kdeconnect.contacts.response_uids_timestamps" "kdeconnect.contacts.response_vcards" "kdeconnect.findmyphone.request" "kdeconnect.mousepad.echo" "kdeconnect.mousepad.keyboardstate" "kdeconnect.mousepad.request" "kdeconnect.mpris" "kdeconnect.mpris.request" "kdeconnect.notification" "kdeconnect.notification.request" "kdeconnect.photo" "kdeconnect.ping" "kdeconnect.presenter" "kdeconnect.runcommand.request" "kdeconnect.sftp" "kdeconnect.share.request" "kdeconnect.sms.attachment_file" "kdeconnect.sms.messages" "kdeconnect.systemvolume.request" "kdeconnect.telephony" ];
      paired = true;
      supported-plugins = [ "battery" "clipboard" "connectivity_report" "contacts" "findmyphone" "mousepad" "mpris" "notification" "photo" "ping" "presenter" "runcommand" "sftp" "share" "sms" "systemvolume" "telephony" ];
      type = "phone";
    };

    "org/gnome/shell/extensions/gsconnect/device/c8929870d2757d53/plugin/battery" = {
      custom-battery-notification-value = mkUint32 80;
    };

    "org/gnome/shell/extensions/gsconnect/device/c8929870d2757d53/plugin/notification" = {
      applications = ''
        {"Printers":{"iconName":"org.gnome.Settings-printers-symbolic","enabled":true},"Evolution Alarm Notify":{"iconName":"appointment-soon","enabled":true},"Solaar":{"iconName":"solaar","enabled":true},"Software":{"iconName":"org.gnome.Software","enabled":true},"Date & Time":{"iconName":"org.gnome.Settings-time-symbolic","enabled":true},"Rhythmbox":{"iconName":"org.gnome.Rhythmbox3","enabled":true},"Disk Usage Analyzer":{"iconName":"org.gnome.baobab","enabled":true},"Power":{"iconName":"org.gnome.Settings-power-symbolic","enabled":true},"Color":{"iconName":"org.gnome.Settings-color-symbolic","enabled":true},"Telegram Desktop":{"iconName":"telegram","enabled":true},"Spotify":{"iconName":"com.spotify.Client","enabled":true},"Files":{"iconName":"org.gnome.Nautilus","enabled":true},"Clocks":{"iconName":"org.gnome.clocks","enabled":true},"Archive Manager":{"iconName":"org.gnome.ArchiveManager","enabled":true},"Signal":{"iconName":"","enabled":true},"discord":{"iconName":"","enabled":true},"Firefox":{"iconName":"","enabled":true},"heroic":{"iconName":"","enabled":true},"WhatsApp for Linux":{"iconName":"","enabled":true},"Disks":{"iconName":"org.gnome.DiskUtility","enabled":true}}
      '';
    };

    "org/gnome/shell/extensions/gsconnect/device/c8929870d2757d53/plugin/share" = {
      receive-directory = "/home/stommydx/Downloads";
    };

    "org/gnome/shell/extensions/gsconnect/messaging" = {
      window-maximized = false;
      window-size = mkTuple [ 640 480 ];
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = false;
      window-size = mkTuple [ 923 771 ];
    };

    "org/gnome/shell/extensions/sound-output-device-chooser" = {
      expand-volume-menu = false;
    };

    "org/gnome/shell/weather" = {
      automatic-location = true;
      locations = "[<(uint32 2, <('Hong Kong', 'VHHH', true, [(0.38979019379430269, 1.9928751117510946)], [(0.38949931722116538, 1.9928751117510946)])>)>]";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/simple-scan" = {
      brightness = 100;
      document-type = "photo";
      save-directory = "file:///home/stommydx/Documents/";
      text-dpi = 300;
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1650203790;
      download-updates = false;
      download-updates-notify = false;
      first-run = false;
      online-updates-timestamp = mkInt64 1665589575;
      update-notification-timestamp = mkInt64 1677405670;
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      background-transparency-percent = 22;
      default-size-columns = 120;
      default-size-rows = 36;
      font = "DroidSansMono Nerd Font Mono 10";
      use-system-font = false;
      use-transparent-background = true;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 170;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 1251 740 ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.75 0.25 ]) (mkTuple [ 0.8 0.0 ]) (mkTuple [ 1.0 1.0 ]) ];
      selected-color = mkTuple [ true 0.0 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 170;
      sort-column = "modified";
      sort-directories-first = false;
      sort-order = "descending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 550;
      manager-window-width = 550;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 600 ];
    };

    "org/virt-manager/virt-manager/new-vm" = {
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "system/proxy" = {
      mode = "none";
    };

  };
}
