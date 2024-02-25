<!-- BEGIN_TF_DOCS -->

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

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > 1.5.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >= 0.46.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox.role"></a> [proxmox.role](#provider\_proxmox.role) | >= 0.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_role.contributor](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |
| [proxmox_virtual_environment_role.reader](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |
| [proxmox_virtual_environment_role.terraform](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_role_id_contributor"></a> [role\_id\_contributor](#input\_role\_id\_contributor) | n/a | `string` | n/a | yes |
| <a name="input_role_id_reader"></a> [role\_id\_reader](#input\_role\_id\_reader) | n/a | `string` | n/a | yes |
| <a name="input_role_id_terraform"></a> [role\_id\_terraform](#input\_role\_id\_terraform) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_id_contributor"></a> [role\_id\_contributor](#output\_role\_id\_contributor) | n/a |
| <a name="output_role_id_reader"></a> [role\_id\_reader](#output\_role\_id\_reader) | n/a |
| <a name="output_role_id_terraform"></a> [role\_id\_terraform](#output\_role\_id\_terraform) | n/a |
<!-- END_TF_DOCS -->