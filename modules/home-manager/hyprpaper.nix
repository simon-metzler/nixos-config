{config, pkgs, lib, ...}:

let
  leftHouse  = ../wallpapers/left_house.jpg;
  rightHouse = ../wallpapers/right_house.jpg;
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
