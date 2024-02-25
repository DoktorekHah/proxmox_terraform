resource "proxmox_virtual_environment_role" "terraform" {
  provider = proxmox.role
  role_id  = var.role_id_terraform 

  privileges = [
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
    "User.Modify"
  ]
}

resource "proxmox_virtual_environment_role" "contributor" {
  provider = proxmox.role
  role_id = var.role_id_contributor

  privileges = [
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

resource "proxmox_virtual_environment_role" "reader" {
  provider = proxmox.role
  role_id = var.role_id_reader

  privileges = [
    "Datastore.Audit",
    "Sys.Audit",
    "VM.Audit",
    "VM.Monitor"
  ]
}