{ config, lib, pkgs, ... }:

{
  home.file."bin/tmux-or" = {
    executable = true;
    source = ./bin/tmux-or;
  };

  home.file."bin/hello" = {
    executable = true;
    text = ''
      #!/bin/sh
      echo "Hello World!"
    '';
  };

}
