{ config, pkgs, ... }:

{
  # Enable dconf (required by virt-manager)
  programs.dconf.enable = true;

  # Add your username here
  users.users.daksh.extraGroups = [ "libvirtd" "kvm" ];

  # Install required packages
  environment.systemPackages = with pkgs; [
    virt-manager         # GUI tool for managing VMs
    qemu_full            # Full QEMU emulator
    libvirt              # Libvirt tools and libraries
    spice                # SPICE protocol
    spice-gtk
    spice-protocol
    gnome.adwaita-icon-theme
  ];

  # Enable libvirtd and configure QEMU
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_full;  # Optional: use full QEMU
      swtpm.enable = true;       # Enable TPM
      ovmf.enable = true;        # Enable UEFI support
      ovmf.packages = [ pkgs.OVMFFull.fd ];  # UEFI firmware
    };
  };

  # Optional: Enable SPICE USB redirection
  virtualisation.spiceUSBRedirection.enable = true;

  # Optional: SPICE guest agent service
  services.spice-vdagentd.enable = true;
}
