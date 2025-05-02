{inputs, ...}: {
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "simon" = import ./home.nix;
    };
  };
}