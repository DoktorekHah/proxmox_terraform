variable "content_type" {
  type    = string
  default = "iso"
}

variable "datastore_id" {
  type    = string
  default = "local"
}

variable "file_name" {
  type = string
}

variable "node_name" {
  type = string
}

variable "url" {
  type    = string
  default = null
}

variable "checksum" {
  type    = string
  default = ""
}

variable "checksum_algorithm" {
  type    = string
  default = "md5"
  validation {
    condition     = contains(["md5", "sha1", "sha224", "sha256", "sha384", "sha512"], var.checksum_algorithm)
    error_message = "You must choose from list md5, sha1, sha224, sha256, sha384, sha512."
  }
}

variable "overwrite" {
  type    = bool
  default = false
}

variable "upload_timeout" {
  type    = number
  default = 1800
}

variable "verify" {
  type    = bool
  default = false
}

variable "path" {
  type    = string
  default = null
}

variable "insecure" {
  type    = bool
  default = true
}

variable "decompression_algorithm" {
  type    = string
  default = null
}
