{ pkgs, ...}:

let 
  session = "${pkgs.hyprland}/bin/Hyprland";
  username = "ivan";
in 

{
  services.greetd = {
    enable = true;
    settings = {
      initial_session = {
        command = "${session}";
        user = "${username}";
      };
    };
  };
}
