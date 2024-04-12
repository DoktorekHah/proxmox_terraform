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