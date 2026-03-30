{ config, pkgs, ... }:

{
  # Install necessary packages
  environment.systemPackages = with pkgs; [
    qemu
    virt-manager
    libvirt
    bridge-utils # Optional for network bridging
  ];

  # Enable and configure libvirt service
  virtualisation.libvirtd = {
    enable = true;
  };

  # Allow access to libvirt for users
  users.users.daksh = {
    extraGroups = [ "libvirtd" ];
  };

  # Open firewall port for libvirt socket (optional)
  networking.firewall.allowedTCPPorts = [ 16509 ];
}
