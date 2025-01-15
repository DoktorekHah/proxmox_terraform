resource "proxmox_virtual_environment_dns" "this" {
  provider = proxmox

  domain    = data.proxmox_virtual_environment_dns.this.domain
  node_name = var.node_name

  servers = var.ip_dns
}