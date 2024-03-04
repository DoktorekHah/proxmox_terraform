# Virtual Machine
```
module "vm" {
  source = "../modules/virtual_machine"
  providers = {
    proxmox.vm = proxmox.app
  }
  name_vm    = "vm"
  node_name  = var.node_name
  vm_id      = "100" 
  cores      = 1
  memory     = 2048
  agent_qemu = false

  username          = "root"
  ssh_public_key    = "ssh-rsa"
  os_config         = "l26" #kernel 2.6 -> 5.* | win11
  bios              = "seabios" #"ovmf"
  started           = true
  reboot_vm         = false
  tpm_datastore_id  = var.datastore_id
  #user_data_file_id = proxmox_virtual_environment_file.cloud_config.id

  tags = ["tags", "terraform"]

  disk = {
    os = {
      cache        = "none"
      datastore_id = var.datastore_id
      file_format  = "qcow2" #vmdk or raw
      file_id      = module.image.datastore_id_download_file
      interface    = "virtio0" #scsi, sata
      size         = "32"
    }
  }

  network_device_bridge  = "vmbr0"
  network_device_enabled = true
  vlan_id                = 0

  template_vm = false

  depends_on = [module.image]
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
| <a name="provider_proxmox.vm"></a> [proxmox.vm](#provider_proxmox.vm) | >= 0.46.0 |
| <a name="provider_random"></a> [random](#provider_random) | n/a |

#### Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_vm.virtual_machine](https://registry.terraform.io/providers/bpg/proxmox/latest/docs/resources/virtual_environment_vm) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

#### Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="input_agent_qemu"></a> [agent_qemu](#input_agent_qemu) | n/a | `bool` | no |
| <a name="input_architecture"></a> [architecture](#input_architecture) | n/a | `string` | no |
| <a name="input_bios"></a> [bios](#input_bios) | n/a | `string` | no |
| <a name="input_cloud_config"></a> [cloud_config](#input_cloud_config) | n/a | `bool` | no |
| <a name="input_cores"></a> [cores](#input_cores) | n/a | `number` | no |
| <a name="input_description"></a> [description](#input_description) | n/a | `string` | no |
| <a name="input_disk"></a> [disk](#input_disk) | n/a | <pre>map(object({<br>    cache        = optional(string, "none")<br>    datastore_id = optional(string)<br>    file_format  = optional(string)<br>    file_id      = optional(string)<br>    interface    = any<br>    size         = optional(string)<br>  }))</pre> | no |
| <a name="input_efi_disk"></a> [efi_disk](#input_efi_disk) | n/a | <pre>map(object({<br>    datastore_id         = optional(string)<br>    efi_disk_file_format = optional(string)<br>    type                 = optional(string, "4m")<br>  }))</pre> | no |
| <a name="input_ip_from_dhcp"></a> [ip_from_dhcp](#input_ip_from_dhcp) | n/a | `string` | no |
| <a name="input_machine"></a> [machine](#input_machine) | n/a | `string` | no |
| <a name="input_memory"></a> [memory](#input_memory) | n/a | `number` | no |
| <a name="input_name_vm"></a> [name_vm](#input_name_vm) | n/a | `string` | yes |
| <a name="input_network_device_bridge"></a> [network_device_bridge](#input_network_device_bridge) | n/a | `string` | no |
| <a name="input_network_device_enabled"></a> [network_device_enabled](#input_network_device_enabled) | n/a | `bool` | no |
| <a name="input_node_name"></a> [node_name](#input_node_name) | n/a | `string` | yes |
| <a name="input_os_config"></a> [os_config](#input_os_config) | n/a | `string` | no |
| <a name="input_password"></a> [password](#input_password) | n/a | `string` | no |
| <a name="input_pool_id"></a> [pool_id](#input_pool_id) | n/a | `string` | no |
| <a name="input_reboot_vm"></a> [reboot_vm](#input_reboot_vm) | n/a | `bool` | no |
| <a name="input_ssh_public_key"></a> [ssh_public_key](#input_ssh_public_key) | n/a | `string` | no |
| <a name="input_started"></a> [started](#input_started) | n/a | `bool` | no |
| <a name="input_tags"></a> [tags](#input_tags) | n/a | `list(string)` | no |
| <a name="input_template_vm"></a> [template_vm](#input_template_vm) | n/a | `bool` | no |
| <a name="input_tpm_datastore_id"></a> [tpm_datastore_id](#input_tpm_datastore_id) | n/a | `string` | no |
| <a name="input_tpm_version"></a> [tpm_version](#input_tpm_version) | n/a | `string` | no |
| <a name="input_user_data_file_id"></a> [user_data_file_id](#input_user_data_file_id) | n/a | `string` | no |
| <a name="input_username"></a> [username](#input_username) | n/a | `string` | no |
| <a name="input_vlan_id"></a> [vlan_id](#input_vlan_id) | n/a | `number` | no |
| <a name="input_vm_id"></a> [vm_id](#input_vm_id) | n/a | `number` | no |
<!-- END_TF_DOCS -->