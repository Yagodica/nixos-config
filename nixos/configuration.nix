{ inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  # nixpkgs.overlays = [ inputs.polymc.overlay ];
 
  nixpkgs.overlays = [ ];
 
  networking.hostName = "nixos"; 

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8"; 

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # I change it bro (-_-)
}
