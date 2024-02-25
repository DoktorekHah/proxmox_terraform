resource "random_password" "password" {
  length           = 16
  override_special = "_%@"
  special          = true
}

locals {
  password  = random_password.password.result
  algorithm = "ECDSA" #"RSA" #RSA, ECDSA, ED25519.
  rsa_bits  = 4096
}