{
  environment.variables = {
    EDITOR = "nvim";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    GSETTINGS_BACKEND = "keyfile";
  };

  environment.etc."mysql-workbench/data/code_editor.xml".source = /home/ivan/nixos-config/copy.xml;

}
