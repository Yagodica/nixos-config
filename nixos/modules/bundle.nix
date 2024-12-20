{
  imports = [
    ./bootloader.nix
    ./sound.nix
    # ./zram.nix
    ./env.nix
    ./user.nix
    ./xserver.nix
    ./nm.nix
    ./virtmanager.nix
    ./hyprland.nix
    ./trim.nix
    ./bluetooth.nix
    ./nixvim/nixvim.nix
    ./greetd.nix
    ./mysql.nix
    ./docker.nix
    ./udisks.nix
    ./cron.nix
  ];
}
