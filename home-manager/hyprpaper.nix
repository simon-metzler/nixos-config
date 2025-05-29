let 
  left = ./wallpaper/left.png;
  right = ./wallpaper/right.png;
in
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${toString left}"
        "${toString right}"
      ];
      wallpaper = [
        "DP-3,${toString left}"
        "HDMI-A-1,${toString right}"
      ];
    };
  };
}
