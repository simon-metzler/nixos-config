{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    # editor
    vim
    vscodium

    # basic utils
    wget
    git
    gh
    htop
    cava

    # browser
    firefox
    
    # app launcher
    wofi
    
    # terminal
    alacritty

    # basic
    discord
    spotify
    ncdu

    # dev
    nodejs
    cargo
    rustc
    gcc

    # fetch
    neofetch

    xfce.thunar

    unzip

  

  ];
 }