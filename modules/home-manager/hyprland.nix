{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = null;

    settings = {
      "$mainMod" = "SUPER";

      monitor = [
        "DP-2,1920x1080,0x0,1"
        "HDMI-A-1,1920x1080,1920x0,1"
      ];

      exec-once = "hyprpaper &";


      general =  {
        gaps_in = 2;
        gaps_out = 4;

        border_size = 0;

        resize_on_border = false;

        layout = "dwindle";
      };

      decoration = {
        active_opacity = 1.0;
        inactive_opacity = 0.9;

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 3;
          passes = 1;

          vibrancy = 0.1696;
        };


      };

      input = {
        kb_layout = "de";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = false;
        };

        sensitivity = 0;
      };

      bind = [

        "$mainMod, SUPER_L, exec, rofi -show drun"

        "$mainMod, Q, exec, alacritty"
        "$mainMod, C, killactive"
        "$mainMod, M, exit"
        "$mainMod, V, togglefloating"
        

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

    };
  };
}