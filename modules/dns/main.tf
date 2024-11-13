resource "proxmox_virtual_environment_dns" "this" {
  provider  = proxmox.dns
  domain    = data.proxmox_virtual_environment_dns.this.domain
  node_name = data.proxmox_virtual_environment_dns.this.node_name

  servers = var.ip_dns
}