{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "stommydx";
  home.homeDirectory = "/home/stommydx";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.bat.enable = true;

  programs.direnv.enable = true;

  programs.git = {
    enable = true;
    userName = "Tommy Li";
    userEmail = "dev@stdx.space";
    signing = {
      key = "577E858EDCFECA83";
      # signByDefault = true;
    };
    delta.enable = true;
  };

  programs.go.enable = true;

  programs.gpg.enable = true;
  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "curses";
  };

  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    history.path = "${config.xdg.stateHome}/zsh/history";
    enableSyntaxHighlighting = true;
    enableAutosuggestions = true;
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./p10k.conf.d;
        file = ".p10k.zsh";
      }
    ];
  };

  xdg.enable = true;
}
