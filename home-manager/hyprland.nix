{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;

    settings = {

      "$mainMod" = "SUPER";

      monitor = [ "DP-3,1920x1080,0x0,1" "HDMI-A-1,1920x1080,1920x0,1" ];

      #env = ["HYPRCURSOR_THEME,Bibata-Modern-Classic" "HYPRCURSOR_SIZE,20" ];

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 0;
        resize_on_border = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 3;
        active_opacity = 0.9;
        inactive_opacity = 0.6;

        blur = {
          enabled = true;
          size = 3;
          passes = 3;
        };

      };

      input = {
        kb_layout = "de";

        sensitivity = -1.0;
      };

      bind = [

        "$mainMod, SUPER_L, exec, rofi -show drun"

        "$mainMod, Q, exec, alacritty"
        "$mainMod, C, killactive"
        "$mainMod, M, exit"
        "$mainMod, V, togglefloating"
        "$mainMod, F, fullscreen"
        
        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod, H, movewindow, l"
        "$mainMod, J, movewindow, d"
        "$mainMod, K, movewindow, u"
        "$mainMod, L, movewindow, r"

      ] ++ (
        builtins.concatLists (builtins.genList (i:
            let ws = i + 1;
            in [
              "$mainMod, code:1${toString i}, workspace, ${toString ws}"
              "$mainMod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
            ]
          )
          9)
      );

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
      
    };
  };
}