{
  lib,
  pkgs,
  catppuccin-bat,
  #nixpkgs-unstable,
  ...
}: {
  home.packages = with pkgs; [
    #games
    zeroadPackages.zeroad-unwrapped
    #tailscale UI
    ktailctl
    #office
     libreoffice-qt
     hunspellDicts.nb-no
     hunspellDicts.en_US-large
     hunspellDicts.en_GB-large
     # terminals
     fish
     # you tube downloader
     yt-dlp


  ];

  programs = {
    tmux = {
      enable = true;
      clock24 = true;
      keyMode = "vi";
      extraConfig = "mouse on";
      #src = nixpkgs-unstable;
    };

    bat = {
      enable = true;
      config = {
        pager = "less -FR";
        theme = "catppuccin-mocha";
      };
      themes = {
        # https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme
        catppuccin-mocha = {
          src = catppuccin-bat;
          file = "Catppuccin-mocha.tmTheme";
        };
      };
    };

    btop.enable = true; # replacement of htop/nmon
    eza.enable = true; # A modern replacement for ‘ls’
    jq.enable = true; # A lightweight and flexible command-line JSON processor
    ssh.enable = true;
    aria2.enable = true;


  };
  #services = {};


}
