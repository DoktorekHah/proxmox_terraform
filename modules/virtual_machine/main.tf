resource "proxmox_virtual_environment_vm" "this" {
  provider = proxmox.vm

  name        = var.name_vm
  description = var.description
  node_name   = var.node_name
  vm_id       = var.vm_id
  pool_id     = var.pool_id == "" ? 0 : 1

  machine = var.machine
  bios    = var.bios
  started = var.started
  reboot  = var.reboot_vm

  tags = var.tags
  agent {
    enabled = var.agent_qemu
  }

  startup {
    order      = "3"
    up_delay   = "60"
    down_delay = "60"
  }

  dynamic "tpm_state" { # TODO change to map
    for_each = var.tpm_state
    content {
      version      = tpm_state.value["tpm_version"]
      datastore_id = tpm_state.value["tpm_version"]
    }
  }

  dynamic "disk" { #TODO change to map
    for_each = var.disk
    content {
      cache        = disk.value["cache"]
      datastore_id = disk.value["datastore_id"]
      file_format  = disk.value["file_format"]
      file_id      = disk.value["file_id"]
      interface    = disk.value["interface"]
      size         = disk.value["size"]
    }
  }

  dynamic "efi_disk" {
    for_each = var.efi_disk
    content {
      datastore_id = var.bios == "ovmf" ? efi_disk.value["efi_disk.datastore_id"] : 0
      file_format  = var.bios == "ovmf" ? efi_disk.value["efi_disk.efi_disk_file_format"] : 0
      type         = var.bios == "ovmf" ? efi_disk.value["efi_disk.type_efi_disk"] : 0
    }
  }

  initialization {
    datastore_id = var.datastore_cloudinit
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

    dns {
      domain  = var.dns_domain
      server  = var.dns_server
      servers = var.dns_servers #TODO its list
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

  dynamic "network_device" { # TODO - tests
    for_each = var.network_device
    content {
      bridge  = each.value.bridge
      model   = each.value.model
      vlan_id = each.value.vlan_id
      enabled = each.value.enabled
    }
  }

  operating_system {
    type = var.os_config
  }

  dynamic "usb" {
    for_each = var.usb
    content {
      host    = usb.value["host"] == "" ? 0 : 1
      mapping = usb.value["mapping"] == "" ? 0 : 1
      usb3    = usb.value["usb3"]
    }
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