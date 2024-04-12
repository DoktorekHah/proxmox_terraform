resource "proxmox_virtual_environment_network_linux_bridge" "this" {
  provider = proxmox.network

  node_name = var.node_name
  name      = var.name

  address  = var.ip_range
  gateway  = var.gateway
  address6 = var.ip_range_6
  gateway6 = var.gateway_6
  mtu      = var.mtu
  ports    = var.ports

  comment = var.comment
}