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
    btop
    cava

    # browser
    firefox
    
    # app launcher
    rofi
    
    # terminal
    alacritty

    # basic
    discord
    spotify

    # hyprpaper
    hyprpaper

    # dev
    nodejs
    cargo
    rustc
    gcc

    # fetch
    neofetch

  ];
}
