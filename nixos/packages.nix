{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    # audacity
    google-chrome
    tor-browser
    telegram-desktop
    alacritty
    # obs-studio
    rofi
    wofi
    mpv
    # kdenlive
    # discord
    gparted
    obsidian
    # zoom-us
    # pcmanfm-qt
    # polymc

    # Coding stuff
    gnumake
    gcc
    # nodejs
    python
    jdk11
    python312Packages.pip
    python312Packages.virtualenv
    (python3.withPackages (ps: with ps; [ requests ]))

    # CLI utils
    cron
    SDL2 
    efibootmgr
    neofetch
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    scrot
    ffmpeg
    light
    lux
    mediainfo
    ranger
    libsecret
    udisks
    udiskie
    # zram-generator
    cava
    zip
    ntfs3g
    # yt-dlp
    brightnessctl
    swww
    openssl
    # lazygit
    bluez
    bluez-tools

    # GUI utils
    feh
    imv
    dmenu
    mpvpaper
    # screenkey
    mako
    hyprpaper
    # gromit-mpx
    gnome.gnome-keyring
    gnome.libgnome-keyring
    gnome.seahorse
    nautilus
    onlyoffice-bin
    vscode
    discord
    dbeaver-bin

    # steam
    steam

    qbittorrent
    # Xorg stuff
    # xterm
    # xclip
    # xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    # herbstluftwm
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    polybar
    waybar

    # Sound
    pipewire
    pulseaudio
    pamixer

    # GPU stuff 
    # amdvlk
    # rocm-opencl-icd
    # glaxnimate

    # Screenshotting
    grim
    grimblast
    slurp
    # flameshot
    swappy

    # Other
    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    papirus-nord

    # login
    greetd.greetd
    greetd.tuigreet

    # wine
    wineWowPackages.stable
    wineWowPackages.staging
    winetricks
    wineWowPackages.waylandFull

    # mysql
    mysql-workbench
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}

