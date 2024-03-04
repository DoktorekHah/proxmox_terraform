# Roles

## Example
```
module "roles" {
  source = "../modules/roles"
  providers = {
    proxmox.role = proxmox.app
  }
  role_id_terraform   = "terraform"
  role_id_contributor = "contributor"
  role_id_reader      = "reader"
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
| <a name="provider_proxmox.role"></a> [proxmox.role](#provider_proxmox.role) | >= 0.46.0 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_role.contributor](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |
| [proxmox_virtual_environment_role.reader](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |
| [proxmox_virtual_environment_role.terraform](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_role_id_contributor"></a> [role_id_contributor](#input_role_id_contributor) | n/a | `string` | yes |
| <a name="input_role_id_reader"></a> [role_id_reader](#input_role_id_reader) | n/a | `string` | yes |
| <a name="input_role_id_terraform"></a> [role_id_terraform](#input_role_id_terraform) | n/a | `string` | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_id_contributor"></a> [role_id_contributor](#output_role_id_contributor) | n/a |
| <a name="output_role_id_reader"></a> [role_id_reader](#output_role_id_reader) | n/a |
| <a name="output_role_id_terraform"></a> [role_id_terraform](#output_role_id_terraform) | n/a |
<!-- END_TF_DOCS -->