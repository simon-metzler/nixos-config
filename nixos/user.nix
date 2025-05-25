{ pkgs, ...}:
{
  users.users.simon = {
    isNormalUser = true;
    description = "simon";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
}