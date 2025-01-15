variable "node_name" {
  type = string
}

variable "network_card" {
  type = map(object({
    name       = string
    ip_range   = optional(string)
    gateway    = optional(string)
    ip_range_6 = optional(string)
    gateway_6  = optional(string)
    mtu        = optional(string, "1500")
    comment    = optional(string, "Managed Network by Terraform")
    vlan_aware = optional(bool)
    ports      = list(string)
  }))
  default = {
  }
}