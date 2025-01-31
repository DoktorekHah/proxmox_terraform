resource "proxmox_virtual_environment_download_file" "this" {
  provider = proxmox

  content_type = var.content_type
  datastore_id = var.datastore_id
  node_name    = var.node_name

  for_each                = var.file #!= null ? var.file : {}
  url                     = each.value.url
  file_name               = each.value.file_name
  decompression_algorithm = each.value.decompression_algorithm
  checksum                = each.value.checksum
  checksum_algorithm      = each.value.checksum_algorithm
  overwrite               = each.value.overwrite
  overwrite_unmanaged     = each.value.overwrite_unmanaged
  upload_timeout          = each.value.upload_timeout
  verify                  = each.value.verify

}