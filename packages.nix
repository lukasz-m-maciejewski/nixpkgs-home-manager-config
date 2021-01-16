{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    emacs
    firefox
    google-chrome
    ledger
    lxappearance
    nixfmt
    fd
    ripgrep
    sbcl
    shellcheck
    tmux
    xfce.thunar
    vim
    binutils
  ];
}
