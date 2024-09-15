{
  pkgs,
  config,
  ...
}:
# media - control and enjoy audio/video
{
  # imports = [
  # ];

  home.packages = with pkgs; [
    # audio control
    pavucontrol
    playerctl
    pulsemixer
    # images
    imv
    vlc
  ];

  programs = {


    obs-studio.enable = true;
  };

  services = {
    playerctld.enable = true;
  };
}
