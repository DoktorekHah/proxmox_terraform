<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | > 1.5.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement_proxmox) | >= 0.46.0, < 1.0.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider_proxmox) | >= 0.46.0, < 1.0.0 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_dns.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_dns) | resource |
| [proxmox_virtual_environment_dns.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/data-sources/virtual_environment_dns) | data source |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_ip_dns"></a> [ip_dns](#input_ip_dns) | n/a | `list(any)` | no |
| <a name="input_node_name"></a> [node_name](#input_node_name) | n/a | `string` | yes |
<!-- END_TF_DOCS -->