# data "local_file" "ssh_public_key" {
#   filename = var.ssh_public_key
# }

# resource "tls_private_key" "vm_key" {
#   algorithm = local.algorithm
#   rsa_bits  = local.rsa_bits
#   ecdsa_curve = "P224"
#   #public_key_openssh = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDwb1KkUesuLoMffQQ1w4qMI3ZFs3wEIzU6xK/Dsgru9ilvIR9C7itfFXc8hkPKQjZ/bxhnGMTBD1M2Vaz/J4C27BrlbSFDUquRvbod5csroDB7pVAL1xBSVRd/D+fnxngHIU8pK7uBfK8B8V/k92/v3az1fjbUGITcTPDb7FlKuEwM0/Z47ST7wSqJdnl0loUsIcolM0HNg2JWVtqvYbwOnf9k6yugXFvqCaeBBfEFMVwGxFKuzYLC4x5gn8r7/mcaB8csuOddybLp0C6I5UPYx6c3hLbXJ4V0D4+RxVpUadu0EHEn7Hw9m6VHDykhRyA/+rccV6ed5YQ38Hh2vy2jpOGNK1lkgLWyV7w9AooKGbWRNdo6ZhAHrwxc8eXMOH4DVfllauNUnsTXo4u0BmxED6Iay5ufCGRqykEpHZTcMg/ObS40bPf+B6a+sT/V8vR59MSnEkwIdqM74o3MjhwxjUZmTjoucyennBOzaYzXQheJh2z2DQpSlZLLry2zuA0= applehah@MBP-AppleHah"
# }

# # Save private key locally.
# resource "local_sensitive_file" "private_key" {
#   content         = tls_private_key.vm_key.private_key_openssh
#   filename        = "mysshkey"
#   file_permission = "0600"
#   depends_on      = [tls_private_key.vm_key]
# }

# # Save public key locally.
# resource "local_sensitive_file" "public_key" {
#   content         = tls_private_key.vm_key.public_key_openssh
#   filename        = "mysshkey.pub"
#   depends_on      = [tls_private_key.vm_key]
# }
