resource "proxmox_virtual_environment_vm" "virtual_machine" {
  provider = proxmox.vm

  name        = var.name_vm
  description = var.description

  tags = var.tags

  node_name = var.node_name
  vm_id     = var.vm_id
  pool_id   = var.pool_id

  machine = var.machine
  bios    = var.bios
  started = var.started
  reboot  = var.reboot_vm

  agent {
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

  # efi_disk {
  #   datastore_id = var.bios == "ovmf" ? var.efi_disk.datastore_id : ""
  #   file_format  = var.bios == "ovmf" ? var.efi_disk.efi_disk_file_format : ""
  #   type         = var.bios == "ovmf" ? var.efi_disk.type_efi_disk : ""
  # }

  initialization {
    ip_config {
      ipv4 {
        address = var.ip_from_dhcp
      }
    }

    user_account {
      keys     = [trimspace(var.ssh_public_key)]
      password = var.password
      username = var.username
    }

    user_data_file_id = var.user_data_file_id
  }

  cpu {
    architecture = var.architecture
    cores        = var.cores
  }

  memory {
    dedicated = var.memory
  }

  dynamic "network_device" {
    for_each = var.network_device_bridge
    content {
      bridge  = network_device.value["bridge"]
      vlan_id = network_device.value["vlan_id"]
      enabled = network_device.value["enabled"]
    }
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
    ignore_changes = [
      id,
      cpu,
      network_device,
      disk,
      initialization,
    ]
  }

  template = var.template_vm
}