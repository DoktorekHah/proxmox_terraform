variable "name_vm" {
  type = string
}

variable "node_name" {
  type = string
}

variable "pool_id" {
  type    = string
  default = ""
}

variable "vm_id" {
  type    = number
  default = "100"
  validation {
    condition     = var.vm_id >= 3
    error_message = "Your number must be in the range from 100 to 2147483647"
  }
}

variable "description" {
  type    = string
  default = "Managed by Terraform"
}

variable "agent_qemu" {
  type    = bool
  default = false
}

variable "ip_from_dhcp" {
  type    = string
  default = "dhcp"
}

variable "disk" {
  type = map(object({
    cache        = optional(string, "none")
    datastore_id = optional(string)
    file_format  = optional(string)
    file_id      = optional(string)
    interface    = any
    size         = optional(string)
  }))
  default = {}
}

variable "efi_disk" {
  type = map(object({
    datastore_id         = optional(string)
    efi_disk_file_format = optional(string)
    type                 = optional(string, "4m")
  }))
  default = {}
}

variable "username" {
  type    = string
  default = null
}

variable "password" {
  type    = string
  default = null
}

variable "tpm_version" {
  type    = string
  default = "v2.0"
}

variable "tpm_datastore_id" {
  type    = string
  default = ""
}

variable "os_config" {
  type    = string
  default = "l26" #kernel 2.6 -> 5.* | win11
}

variable "machine" {
  type    = string
  default = "q35"
}

variable "started" {
  type    = bool
  default = false
}

variable "reboot_vm" {
  type    = bool
  default = false
}

variable "template_vm" {
  type    = bool
  default = false
}

variable "ssh_public_key" {
  type    = string
  default = ""
}

variable "cloud_config" {
  type    = bool
  default = false
}

variable "user_data_file_id" {
  type    = string
  default = ""
}

variable "bios" {
  type    = string
  default = "ovmf"
}

variable "architecture" {
  type    = string
  default = "x86_64"
}

variable "cores" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 1024
}

variable "network_device_bridge" {
  type = map(any)
  default = {
    eth1 = {
      bridge  = "vmbr0"
      enabled = true
      vlan_id = 0
    }
  }
}

variable "tags" {
  type    = list(string)
  default = ["Terraform", "Tags"]
}