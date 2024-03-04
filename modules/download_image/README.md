# Download Image

```
module "download_image" {
  source = "../modules/download_image"
  providers = {
    proxmox.download = proxmox.app
  }
  content_type            = "iso"
  datastore_id            = var.datastore_id
  file_name               = "image.iso"
  node_name               = var.node_name
  decompression_algorithm = "gz"
  url                     = "https://image.iso.gz"
  checksum                = "checksum"
  checksum_algorithm      = "sha256"
  overwrite               = false
  upload_timeout          = 600
  verify                  = false
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.5.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >= 0.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox.download"></a> [proxmox.download](#provider\_proxmox.download) | >= 0.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_download_file.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_download_file) | resource |
| [proxmox_virtual_environment_file.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_checksum"></a> [checksum](#input\_checksum) | n/a | `string` | `""` | no |
| <a name="input_checksum_algorithm"></a> [checksum\_algorithm](#input\_checksum\_algorithm) | n/a | `string` | `"md5"` | no |
| <a name="input_content_type"></a> [content\_type](#input\_content\_type) | n/a | `string` | `"iso"` | no |
| <a name="input_datastore_id"></a> [datastore\_id](#input\_datastore\_id) | n/a | `string` | `"local"` | no |
| <a name="input_decompression_algorithm"></a> [decompression\_algorithm](#input\_decompression\_algorithm) | n/a | `string` | `null` | no |
| <a name="input_file_name"></a> [file\_name](#input\_file\_name) | n/a | `string` | n/a | yes |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | n/a | `bool` | `true` | no |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | n/a | `string` | n/a | yes |
| <a name="input_overwrite"></a> [overwrite](#input\_overwrite) | n/a | `bool` | `false` | no |
| <a name="input_path"></a> [path](#input\_path) | n/a | `string` | `null` | no |
| <a name="input_upload_timeout"></a> [upload\_timeout](#input\_upload\_timeout) | n/a | `number` | `1800` | no |
| <a name="input_url"></a> [url](#input\_url) | n/a | `string` | `null` | no |
| <a name="input_verify"></a> [verify](#input\_verify) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_datastore_id_download_file"></a> [datastore\_id\_download\_file](#output\_datastore\_id\_download\_file) | n/a |
<!-- END_TF_DOCS -->