terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">= 0.63.3"
      configuration_aliases = [
        proxmox.vm
      ]
    }
  }
  required_version = "> 1.5.0"
}