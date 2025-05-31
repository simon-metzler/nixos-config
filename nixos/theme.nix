{ pkgs, ... }: 
{
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/black-metal-dark-funeral.yaml";

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 20;
    };
  };
}
