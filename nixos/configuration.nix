{ inputs, outputs, pkgs ? import <nixpkgs> {}, ...}: 

let
  customPkgs = import (builtins.fetchTarball {
    url = "https://download.oracle.com/otn_software/java/sqldeveloper/sqldeveloper-23.1.1.345.2114-no-jre.zip";
    sha256 = "1girm7ksafrsvk0fpcswyqiwadpf4fzs5w5ff2h6v7qb4v573jji";
  }) { inherit pkgs; };
in 
{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  # nixpkgs.overlays = [ inputs.polymc.overlay ];
 
  services.gnome.gnome-keyring.enable = true;

  nixpkgs.overlays = [ 

  ];

  environment.systemPackages = with customPkgs; [
    sqldeveloper 
  ];
 
  networking.hostName = "nixos"; 

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8"; 

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # I change it bro (-_-)
}
