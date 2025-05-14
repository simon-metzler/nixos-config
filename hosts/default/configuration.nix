{ config, pkgs, inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/nixos/bundle.nix
      inputs.home-manager.nixosModules.default
      

    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";


  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "simon" = import ./home.nix;
    };
  };

  stylix.enable = true;

  stylix.base16Scheme = {
    base00 = "282c34";
    base01 = "353b45";
    base02 = "3e4451";
    base03 = "545862";
    base04 = "565c64";
    base05 = "abb2bf";
    base06 = "b6bdca";
    base07 = "c8ccd4";
    base08 = "e06c75";
    base09 = "d19a66";
    base0A = "e5c07b";
    base0B = "98c379";
    base0C = "56b6c2";
    base0D = "61afef";
    base0E = "c678dd";
    base0F = "be5046";
  };


  system.stateVersion = "24.11";
}
