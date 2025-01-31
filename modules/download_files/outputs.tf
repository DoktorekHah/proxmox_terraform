output "datastore_download_file" {
  value =  { for k, v in proxmox_virtual_environment_download_file.this : k => ({
    id = v.id
    file_name = v.file_name
    })
  }
}