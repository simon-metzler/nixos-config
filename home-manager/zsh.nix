{
  programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;

  shellAliases = {
    update = "sudo nixos-rebuild switch --flake /home/$USER/nixos";
  };
  history.size = 1000;
};
}