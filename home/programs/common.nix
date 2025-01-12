{
  lib,
  pkgs,
  catppuccin-bat,
  #nixpkgs-unstable,
  ...
}: {
  home.packages = with pkgs; [
    # archives
    zip
    unzip
    p7zip
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
/*
    # utils
    ripgrep
    yq-go # https://github.com/mikefarah/yq
    htop
    # misc
    libnotify
    wineWowPackages.wayland
    xdg-utils
    graphviz

    # productivity
    obsidian
    # IDE
    insomnia

    # cloud native
    docker-compose
    kubectl

    nodejs
    nodePackages.npm
    nodePackages.pnpm
    yarn

    # db related
    dbeaver-bin
    mycli
    pgcli
    */

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

    skim = {
      enable = true;
      enableZshIntegration = true;
      defaultCommand = "rg --files --hidden";
      changeDirWidgetOptions = [
        "--preview 'exa --icons --git --color always -T -L 3 {} | head -200'"
        "--exact"
      ];
    };
  };
  #services = {};


}
