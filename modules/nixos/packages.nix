{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;


  environment.systemPackages = with pkgs; [
    vim
    wget
    kitty
    vivaldi
    vscodium
    rofi
    git
    gh
    alacritty
  ];
}