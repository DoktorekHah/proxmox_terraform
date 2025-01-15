resource "proxmox_virtual_environment_role" "this" {
  for_each   = var.role
  provider   = proxmox
  role_id    = each.value.role_name
  privileges = each.value.privileges_list
}