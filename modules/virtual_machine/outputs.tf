output "outputs_vm" {
  value = {
    id      = proxmox_virtual_environment_vm.this.id
    vm_name = proxmox_virtual_environment_vm.this.name
  }
  description = "VM id, name"
}