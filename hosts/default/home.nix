{ config, pkgs, ... }:

{

  imports = [
    ../../modules/home-manager/bundle.nix
  ];


  home = {
    username = "simon";
    homeDirectory = "/home/simon";
    stateVersion = "24.11"; 
  };

  programs.home-manager.enable = true;
}
