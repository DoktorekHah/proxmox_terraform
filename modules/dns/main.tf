resource "proxmox_virtual_environment_dns" "first_node_dns_configuration" {
  provider = proxmox.dns
  domain    = data.proxmox_virtual_environment_dns.first_node_dns_configuration.domain
  node_name = data.proxmox_virtual_environment_dns.first_node_dns_configuration.node_name

  servers = var.ip_dns
}

data "proxmox_virtual_environment_dns" "first_node_dns_configuration" {
  provider = proxmox.dns
  node_name = var.node_name
}