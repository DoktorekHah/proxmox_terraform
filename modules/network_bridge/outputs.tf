output "network_interface" {
  value = {
    id       = proxmox_virtual_environment_network_linux_bridge.this.id
    name     = proxmox_virtual_environment_network_linux_bridge.this.name
    ip_range = proxmox_virtual_environment_network_linux_bridge.this.address
    ports    = proxmox_virtual_environment_network_linux_bridge.this.ports
  }
  description = "Network bridge id, name, address and ports"
}

output "vlan" {
  value = {
    name = proxmox_virtual_environment_network_linux_vlan.this.name
  }
}