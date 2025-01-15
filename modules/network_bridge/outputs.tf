output "network_interface" {
  value = {
    id = { for k, v in proxmox_virtual_environment_network_linux_bridge.this : k => v.id }
    name = { for k, v in proxmox_virtual_environment_network_linux_bridge.this : k => v.name }
    ports = { for k, v in proxmox_virtual_environment_network_linux_bridge.this : k => v.ports }

  }
  description = "Network bridge id, name, address and ports"
}
