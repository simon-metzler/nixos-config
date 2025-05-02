{ config, pkgs, ... }:

{
  home.username = "simon";
  home.homeDirectory = "/home/simon";

  home.stateVersion = "24.11"; 

  programs.home-manager.enable = true;
}
