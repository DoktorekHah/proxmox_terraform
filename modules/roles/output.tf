output "role_id_terraform" {
  value = proxmox_virtual_environment_role.terraform.id
}

output "role_id_contributor" {
  value = proxmox_virtual_environment_role.contributor.id
}

output "role_id_reader" {
  value = proxmox_virtual_environment_role.reader.id
}