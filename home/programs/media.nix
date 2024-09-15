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
    vlc
  ];

  programs = {


    obs-studio.enable = true;
  };

  services = {

  };
}
