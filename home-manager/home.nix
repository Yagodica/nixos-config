{

  imports = [
    ./zsh.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "ivan";
    homeDirectory = "/home/ivan";
    stateVersion = "24.05";
  };
}
