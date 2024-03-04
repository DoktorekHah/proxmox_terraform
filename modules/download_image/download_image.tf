resource "proxmox_virtual_environment_download_file" "this" {
  count    = var.url != null ? 1 : 0
  provider = proxmox.download

  content_type            = var.content_type
  datastore_id            = var.datastore_id
  file_name               = var.file_name
  node_name               = var.node_name
  decompression_algorithm = var.decompression_algorithm
  url                     = var.url
  checksum                = var.checksum
  checksum_algorithm      = var.checksum_algorithm
  overwrite               = var.overwrite
  upload_timeout          = var.upload_timeout
  verify                  = var.verify
}