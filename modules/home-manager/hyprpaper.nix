{
  services.hyprpaper = {
    enable = true;

    settings = {
      preload = [ "../wallpapers.left_house.jpg" "../wallpapers.right_house.jpg" ];
      wallpaper = [
        "DP-2,../wallpapers.left_house.jpg"
        "HDMI-A-1,../wallpapers.right_house.jpg"
      ];
    }
  }
}