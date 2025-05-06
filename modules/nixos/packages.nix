{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;


  environment.systemPackages = with pkgs; [
    # editor
    vim
    vscodium

    # basic utils
    wget
    git
    gh

    # browser
    librewolf
    
    # app launcher
    rofi
    
    # terminal
    alacritty

    # basic
    discord
    spotify

    # hyprpaper
    hyprpaper

  ];
}