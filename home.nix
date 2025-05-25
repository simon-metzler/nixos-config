{ config, pkgs, ... }:

{

  imports =
    [
      ./home-manager/bundle.nix
    ];

  home.username = "simon";
  home.homeDirectory = "/home/simon";

  home.stateVersion = "25.05";

 
  programs.home-manager.enable = true;
}
