# Users

## Example
```
module "contributor_users" {
  source = "../modules/users"
  providers = {
    proxmox.user = proxmox.app
  }

  user_id         = "user@pve"
  secret          = ""
  enabled_account = false
  path            = var.path_roles
  propagate       = true
  role_id         = module.roles.role_id_contributor
  #groups          = ""
  comment         = "Managed by Terraform"
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
| <a name="provider_proxmox.user"></a> [proxmox.user](#provider_proxmox.user) | >= 0.46.0 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_user.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_user) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_comment"></a> [comment](#input_comment) | n/a | `string` | no |
| <a name="input_enabled_account"></a> [enabled_account](#input_enabled_account) | n/a | `bool` | no |
| <a name="input_path"></a> [path](#input_path) | n/a | `string` | yes |
| <a name="input_propagate"></a> [propagate](#input_propagate) | n/a | `bool` | no |
| <a name="input_role_id"></a> [role_id](#input_role_id) | n/a | `string` | yes |
| <a name="input_secret"></a> [secret](#input_secret) | n/a | `string` | yes |
| <a name="input_user_id"></a> [user_id](#input_user_id) | n/a | `string` | yes |
<!-- END_TF_DOCS -->