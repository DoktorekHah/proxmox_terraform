resource "proxmox_virtual_environment_user" "this" {
  provider = proxmox.user
  acl {
    path      = var.path
    propagate = var.propagate
    role_id   = var.role_id
  }

  comment  = var.comment
  password = var.secret
  user_id  = var.user_id
  enabled  = var.enabled_account
  #count = var.groups != null ? groups : 0
}