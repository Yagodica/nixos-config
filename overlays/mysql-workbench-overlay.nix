self: super: {
  mysqlWorkbench = super.mysqlWorkbench.overrideAttrs (oldAttrs: {
    data = [
      (self.writeText "date/code_editor.xml" (builtins.readFile /home/ivan/nixos-config/copy.xml))
    ];
  });
}

