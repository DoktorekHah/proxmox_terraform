<!-- BEGIN_TF_DOCS -->
## Example
```
module "dns" {
  source = "../modules/dns"
  providers = {
    proxmox.dns = proxmox.app
  }
  node_name = var.node_name
  ip_dns    = ["8.8.8.8"]
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
| <a name="provider_proxmox.dns"></a> [proxmox.dns](#provider\_proxmox.dns) | >= 0.46.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_dns.first_node_dns_configuration](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_dns) | resource |
| [proxmox_virtual_environment_dns.first_node_dns_configuration](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/data-sources/virtual_environment_dns) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_dns"></a> [ip\_dns](#input\_ip\_dns) | n/a | `list` | <pre>[<br>  "8.8.8.8"<br>]</pre> | no |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->