let 
  path = ../wallpaper.png;
in
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "${toString path}"
      ];
      wallpaper = [
        "DP-3,${toString path}"
        "HDMI-A-1,${toString path}"
      ];
    };
  };
}