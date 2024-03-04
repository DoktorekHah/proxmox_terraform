variable "role_id" {
  type = string
}

variable "user_id" {
  type = string
}

# variable "groups" {
#   type = any
# }

variable "propagate" {
  type    = bool
  default = true
}

variable "path" {
  type = string
}

variable "secret" {
  type      = string
  sensitive = true
}

variable "enabled_account" {
  type      = bool
  default   = false
  sensitive = true
}

variable "comment" {
  type    = string
  default = "Managed by Terraform"
}

# variable "expiration_date_account" {
#   type = string
# }

# variable "keys" {

# }