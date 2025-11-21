{ config, pkgs, ... }:

{
  # Enable KVM kernel module
  boot.kernelModules = [
    "kvm"
    "kvm-intel"
  ]; # or kvm-amd if you're using an AMD CPU

  # Enable virtualization
  virtualisation.virtualisationManager = "qemu";

  # Optionally, enable libvirt for easier VM management
  virtualisation.libvirtd = {
    enable = true;
    extraOptions = "--listen tcp"; # Enable libvirt over TCP (if needed)
  };

  environment.systemPackages = with pkgs; [
    qemu
    qemu_kvm
    virt-manager # Optional: GUI for managing VMs
  ];

  # Add your user to the kvm group
  users.users.daksh.extraGroups = [
    "kvm"
    "libvirt"
  ];

  # Optional: Enable networking bridges (if needed)
  # networking.bridgeInterfaces = [ "br0" ]; # Example for bridge
}
