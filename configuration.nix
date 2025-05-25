{ inputs, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./nixos/bundle.nix
      inputs.home-manager.nixosModules.home-manager
      
    ];

  networking.hostName = "nixos";

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      simon = import ./home.nix;
    };
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.11";

}
