# Roles

## Example
```
module "roles" {
  source = "../../proxmox_terraform/modules/roles"
  providers = {
    proxmox = proxmox.app
  }
  role = {
    roles = {
      role_name = "opentofu"
      privileges_list = [
        "Datastore.Allocate",
        "Datastore.AllocateSpace",
        "Datastore.AllocateTemplate",
        "Datastore.Audit",
        "Pool.Allocate",
        "Sys.Audit",
        "Sys.Console",
        "Sys.Modify",
        "SDN.Use",
        "VM.Allocate",
        "VM.Audit",
        "VM.Clone",
        "VM.Config.CDROM",
        "VM.Config.Cloudinit",
        "VM.Config.CPU",
        "VM.Config.Disk",
        "VM.Config.HWType",
        "VM.Config.Memory",
        "VM.Config.Network",
        "VM.Config.Options",
        "VM.Migrate",
        "VM.Monitor",
        "VM.PowerMgmt",
      ]
    }
  }
}

output "role" {
  value = module.roles[*]["role"]["name"]["roles"]
}
```

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
| [proxmox_virtual_environment_role.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_role) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_role"></a> [role](#input_role) | n/a | <pre>map(object({<br>    role_name       = string<br>    privileges_list = list(string)<br>  }))</pre> | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_role"></a> [role](#output_role) | n/a |
<!-- END_TF_DOCS -->