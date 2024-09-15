{pkgs, ...}: {
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  #moved kde to plasma6.nix
  services.desktopManager.plasma6.enable = true;
    programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    #xwayland.enable = true;
  };
}
