# Download Files

```
module "download_files" {
  source = "../modules/download_files"
  providers = {
    proxmox = proxmox.app
  }
  datastore_id       = var.datastore_iso
  node_name          = var.node_name

  file = {
    name1 = {
      file_name          = "name"
      url                = "https://*"
      checksum           = ""
      checksum_algorithm = "sha256"
      upload_timeout     = 600
      verify             = false
    }
  }
}
```
<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | > 1.5.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement_proxmox) | >= 0.46.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider_proxmox) | >= 0.46.0 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_download_file.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_download_file) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_content_type"></a> [content_type](#input_content_type) | n/a | `string` | no |
| <a name="input_datastore_id"></a> [datastore_id](#input_datastore_id) | n/a | `string` | no |
| <a name="input_file"></a> [file](#input_file) | n/a | <pre>map(object({<br>    url                     = string<br>    file_name               = optional(string)<br>    checksum                = optional(string)<br>    checksum_algorithm      = optional(string)<br>    decompression_algorithm = optional(string)<br>    overwrite               = optional(bool, false)<br>    overwrite_unmanaged     = optional(bool, false)<br>    upload_timeout          = optional(number)<br>    verify                  = optional(bool, true)<br>  }))</pre> | no |
| <a name="input_node_name"></a> [node_name](#input_node_name) | n/a | `string` | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_outputs_datastore_download_file"></a> [outputs_datastore_download_file](#output_outputs_datastore_download_file) | n/a |
<!-- END_TF_DOCS -->