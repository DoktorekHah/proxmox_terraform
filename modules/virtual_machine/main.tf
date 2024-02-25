resource "proxmox_virtual_environment_vm" "virtual_machine" {
  provider = proxmox.vm

  name        = var.name_vm
  description = "Managed by Terraform"
  tags        = ["terraform", "ubuntu"]

  node_name = var.node_name
  vm_id     = var.vm_id
  pool_id   = var.pool_id

  machine = var.machine
  bios    = var.bios
  started = var.started
  reboot  = var.reboot_vm

  agent {
    # read 'Qemu guest agent' section, change to true only when ready
    enabled = var.agent_qemu
  }

  startup {
    order      = "3"
    up_delay   = "60"
    down_delay = "60"
  }

  for_each = var.disk
  disk {
    cache        = each.value.cache
    datastore_id = each.value.datastore_id
    file_format  = each.value.file_format
    file_id      = each.value.file_id
    interface    = each.value.interface
    size         = each.value.size
  }

  count = var.bios == "ovmf" ? var.efi_disk : 0
  efi_disk {
    datastore_id = each.value.datastore_id
    file_format  = each.value.file_format
    type         = each.value.type_efi_disk
  }

  initialization {
    ip_config {
      ipv4 {
        address = var.ip_from_dhcp
      }
    }

    user_account {
      keys     = [trimspace(var.ssh_public_key)]
      password = "paas"
      username = var.username
    }

    # user_data_file_id = proxmox_virtual_environment_file.cloud_config.id
  }

  cpu {
    architecture = var.architecture
    cores        = var.cores
  }

  memory {
    dedicated = var.memory
  }

  network_device {
    bridge  = var.network_device_bridge
    vlan_id = var.vlan_id
    enabled = var.network_device_enabled
  }

  operating_system {
    type = var.os_config
  }

  tpm_state {
    datastore_id = var.tpm_datastore_id
    version      = var.tpm_version
  }

  serial_device {}

  lifecycle {
    ignore_changes = []
  }

  template = var.template_vm

}