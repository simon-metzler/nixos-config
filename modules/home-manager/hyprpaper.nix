let
  leftHouse  = ../wallpapers/left.png;
  rightHouse = ../wallpapers/right.png;
in {
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        (builtins.toString leftHouse)
        (builtins.toString rightHouse)
      ];
      wallpaper = [
        "DP-2,${builtins.toString leftHouse}"
        "HDMI-A-1,${builtins.toString rightHouse}"
      ];
    };
  };
}
