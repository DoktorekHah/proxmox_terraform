variable "node_name" {
  type = string
}
variable "vlan_settings" {
  type = map(object({
    autostart      = optional(bool)
    vlan           = optional(number)
    vlan_name_port = optional(string)
    comment        = optional(string)
  }))
}
