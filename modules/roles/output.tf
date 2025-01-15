output "role" {
  value = {
    id   = { for k, v in proxmox_virtual_environment_role.this : k => v.id }
    name = { for k, v in proxmox_virtual_environment_role.this : k => v.role_id }
  }
}