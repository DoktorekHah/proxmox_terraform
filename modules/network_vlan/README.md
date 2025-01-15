# Network_Vlan
```
module "vlan" {
  source = "../../proxmox_terraform/modules/network_vlan"
  providers = {
    proxmox = proxmox.app
  }

  node_name = var.node_name

  vlan_settings = {
    vm = {
      vlan_name_port = "name_port.vlan"
      autostart = true
      comment = "comment"
    }
  }
}

output vlan {
  value = module.vlan[*]["vlan"]["name"]["vm"]
}
```
<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | > 1.8.0 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement_proxmox) | >= 0.46.0, < 1.0.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider_proxmox) | 0.66.3 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_network_linux_vlan.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_network_linux_vlan) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_node_name"></a> [node_name](#input_node_name) | n/a | `string` | yes |
| <a name="input_vlan_settings"></a> [vlan_settings](#input_vlan_settings) | n/a | <pre>map(object({<br>    autostart      = optional(bool)<br>    vlan           = optional(number)<br>    vlan_name_port = optional(string)<br>    comment        = optional(string)<br>  }))</pre> | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_vlan"></a> [vlan](#output_vlan) | vlan id, name |
<!-- END_TF_DOCS -->