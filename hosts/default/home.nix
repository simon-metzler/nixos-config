{ config, pkgs, ... }:

{

  imports = [
    ../../modules/home-manager/hyprland.nix
  ];


  home = {
    username = "simon";
    homeDirectory = "/home/simon";
    stateVersion = "24.11"; 
  }


  programs.home-manager.enable = true;
}
