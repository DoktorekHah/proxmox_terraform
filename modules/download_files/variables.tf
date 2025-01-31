variable "content_type" {
  type    = string
  default = "iso"
  validation {
    condition     = contains(["iso", "vztmpl"], var.content_type)
    error_message = "The file content type. Must be iso for VM images or vztmpl for LXC images."
  }
}

variable "datastore_id" {
  type    = string
  default = "local"
}

variable "node_name" {
  type = string
}

variable "file" {
  type = map(object({
    url                     = string
    file_name               = optional(string)
    checksum                = optional(string)
    checksum_algorithm      = optional(string)
    decompression_algorithm = optional(string)
    overwrite               = optional(bool, false)
    overwrite_unmanaged     = optional(bool, false)
    upload_timeout          = optional(number)
    verify                  = optional(bool, true)
  }))
  default = {}
}