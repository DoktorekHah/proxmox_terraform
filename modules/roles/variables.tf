variable "role" {
  type = map(object({
    role_name       = string
    privileges_list = list(string)
  }))
  default = {}
}