output "datastore_id_download_file" {
  value = proxmox_virtual_environment_download_file.this[0].id
}

# output "file_name_download_file" {
#   value = proxmox_virtual_environment_download_file.this.file_name
# }