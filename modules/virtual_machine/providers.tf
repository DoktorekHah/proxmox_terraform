terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.46.0"
      configuration_aliases = [
        proxmox.vm
      ]
    }
  }
  required_version = "> 1.5.0"
}