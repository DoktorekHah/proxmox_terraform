<!-- BEGIN_TF_DOCS -->
## Example
```
module "vm" {
  source = "../modules/virtual_machine"
  providers = {
    proxmox.vm = proxmox.app
  }
  name_vm    = "vm"
  node_name  = var.node_name
  vm_id      = "100"
  cores      = 2
  memory     = 1024
  agent_qemu = true

  username         = "root"
  ssh_public_key   = "ssh-rsa??"
  os_config        = "l26" #kernel 2.6 -> 5.* | win11
  bios             = "ovmf"
  started          = true
  reboot_vm        = true
  tpm_datastore_id = var.datastore_id

  disk = {
    os = {
      cache        = "none"
      datastore_id = var.datastore_id
      file_format  = "raw" #vmdk or qcow2
      file_id      = module.image_debian.datastore_id_download_file
      interface    = "scsi0" #scsi, sata
      size         = "64"
    }
  }

  efi_disk = {
    efi_disk = {
      datastore_id = var.datastore_id
      file_format  = "raw" #vmdk or qcow2
      type         = "4m"
    }
  }

  network_device_bridge  = "vmbr0"
  network_device_enabled = true
  vlan_id                = ""

  template_vm = false
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
| <a name="provider_proxmox.vm"></a> [proxmox.vm](#provider\_proxmox.vm) | >= 0.46.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_vm.virtual_machine](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_vm) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_qemu"></a> [agent\_qemu](#input\_agent\_qemu) | n/a | `bool` | `false` | no |
| <a name="input_architecture"></a> [architecture](#input\_architecture) | n/a | `string` | `"x86_64"` | no |
| <a name="input_bios"></a> [bios](#input\_bios) | n/a | `string` | `"ovmf"` | no |
| <a name="input_cloud_config"></a> [cloud\_config](#input\_cloud\_config) | n/a | `bool` | `false` | no |
| <a name="input_cores"></a> [cores](#input\_cores) | n/a | `number` | `2` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"Managed by Terraform"` | no |
| <a name="input_disk"></a> [disk](#input\_disk) | n/a | <pre>map(object({<br>    cache        = optional(string, "none")<br>    datastore_id = optional(string)<br>    file_format  = optional(string)<br>    file_id      = optional(string)<br>    interface    = any<br>    size         = optional(string)<br>  }))</pre> | `{}` | no |
| <a name="input_efi_disk"></a> [efi\_disk](#input\_efi\_disk) | n/a | <pre>map(object({<br>    datastore_id = optional(string)<br>    file_format  = optional(string)<br>    type         = optional(string, "4m")<br>  }))</pre> | `{}` | no |
| <a name="input_ip_from_dhcp"></a> [ip\_from\_dhcp](#input\_ip\_from\_dhcp) | n/a | `string` | `"dhcp"` | no |
| <a name="input_machine"></a> [machine](#input\_machine) | n/a | `string` | `"q35"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | n/a | `number` | `1024` | no |
| <a name="input_name_vm"></a> [name\_vm](#input\_name\_vm) | n/a | `string` | n/a | yes |
| <a name="input_network_device_bridge"></a> [network\_device\_bridge](#input\_network\_device\_bridge) | n/a | `string` | `"vmbr0"` | no |
| <a name="input_network_device_enabled"></a> [network\_device\_enabled](#input\_network\_device\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_node_name"></a> [node\_name](#input\_node\_name) | n/a | `string` | n/a | yes |
| <a name="input_os_config"></a> [os\_config](#input\_os\_config) | n/a | `string` | `"l26"` | no |
| <a name="input_pool_id"></a> [pool\_id](#input\_pool\_id) | n/a | `string` | `""` | no |
| <a name="input_reboot_vm"></a> [reboot\_vm](#input\_reboot\_vm) | n/a | `bool` | `false` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | n/a | `string` | `""` | no |
| <a name="input_started"></a> [started](#input\_started) | n/a | `bool` | `false` | no |
| <a name="input_template_vm"></a> [template\_vm](#input\_template\_vm) | n/a | `bool` | `false` | no |
| <a name="input_tpm_datastore_id"></a> [tpm\_datastore\_id](#input\_tpm\_datastore\_id) | n/a | `string` | `""` | no |
| <a name="input_tpm_version"></a> [tpm\_version](#input\_tpm\_version) | n/a | `string` | `"v2.0"` | no |
| <a name="input_username"></a> [username](#input\_username) | n/a | `string` | `"null"` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | n/a | `number` | `""` | no |
| <a name="input_vm_id"></a> [vm\_id](#input\_vm\_id) | n/a | `number` | `"100"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->