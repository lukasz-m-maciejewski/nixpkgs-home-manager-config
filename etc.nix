{ config, lib, pkgs, ... }:

{
  home.file.".config/rofi/config.rasi" = {
    source = ./etc/rofi_config_rasi;
  };
}
