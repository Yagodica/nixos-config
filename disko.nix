{
  disko.devices = {
    disk = {
      my-disk = {
        device = "/dev/nvme0n1";
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              type = "EF00";
              size = "512M";
              content = {
               type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            };

            swap = {
              size = "12G";
              content = {
                type = "swap";
                resumeDevice = true;
              };
            };

            root = {
              size = "100G";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
              };
            };
          };
        };
      };
    };
  };
}
