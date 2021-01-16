{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "lukaszm";
  home.homeDirectory = "/home/lukaszm";

  programs.git = {
    enable = true;
    userName = "Lukasz Maciejewski";
    userEmail = "lukasz.m.maciejewski@pm.me";
    extraConfig = { pull = { ff = "only"; }; };
  };

  programs.tmux = {
    enable = true;
    baseIndex = 1;
    historyLimit = 100000;
    escapeTime = 10;
    shortcut = "z";
    terminal = "screen-256color";
  };

  imports = [ ./packages.nix ./bin.nix ./etc.nix ];

  xsession.pointerCursor = {
    name = "Vanilla-DMZ-AA";
    package = pkgs.vanilla-dmz;
    size = 64;
  };

  gtk = {
    enable = true;
    font.name = "Linux Libertine";
    theme.name = "Adwaita";
    iconTheme.name = "Rodent";
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
