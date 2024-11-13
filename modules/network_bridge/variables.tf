variable "node_name" {
  type = string
}

variable "name" {
  type = string
}

variable "ip_range" {
  type    = string
  default = null
}

variable "gateway" {
  type    = string
  default = null
}

variable "ip_range_6" {
  type    = string
  default = null
}

variable "gateway_6" {
  type    = string
  default = null
}

variable "mtu" {
  type    = string
  default = "1500"
}

variable "comment" {
  type    = string
  default = "Managed Network by Terraform"
}

variable "ports" {
  type    = list(string)
  default = []
}

variable "autostart" {
  type    = bool
  default = true
}

variable "vlan_set" {
  type    = bool
  default = true
}

variable "vlan" {
  type    = number
  default = null
}

variable "vlan_name_port" {
  type    = string
  default = ""
}