# Network_Bridge
```
module "network_bridge" {
  source = "../modules/network_bridge"
  providers = {
    proxmox.vm = proxmox.app
  }

  node_name = var.node_name
  name      = "vmbr99"
  ip_range  = "99.99.99.99/16"
  gateway   = "255.255.255.0"
  mtu       = "1500
  comment   = "Terraform"
  
  ports = [
    "ens18.99"
  ]
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
| <a name="provider_proxmox.network"></a> [proxmox.network](#provider_proxmox.network) | >= 0.46.0 |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_network_linux_bridge.this](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_network_linux_bridge) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_autostart"></a> [autostart](#input_autostart) | n/a | `bool` | no |
| <a name="input_comment"></a> [comment](#input_comment) | n/a | `string` | no |
| <a name="input_gateway"></a> [gateway](#input_gateway) | n/a | `string` | no |
| <a name="input_gateway_6"></a> [gateway_6](#input_gateway_6) | n/a | `string` | no |
| <a name="input_ip_range"></a> [ip_range](#input_ip_range) | n/a | `string` | no |
| <a name="input_ip_range_6"></a> [ip_range_6](#input_ip_range_6) | n/a | `string` | no |
| <a name="input_mtu"></a> [mtu](#input_mtu) | n/a | `string` | no |
| <a name="input_name"></a> [name](#input_name) | n/a | `string` | yes |
| <a name="input_node_name"></a> [node_name](#input_node_name) | n/a | `string` | yes |
| <a name="input_ports"></a> [ports](#input_ports) | n/a | `list(string)` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_bridge_name"></a> [network_bridge_name](#output_network_bridge_name) | n/a |
<!-- END_TF_DOCS -->