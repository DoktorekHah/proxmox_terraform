data "proxmox_virtual_environment_dns" "this" {
  node_name = var.node_name
}