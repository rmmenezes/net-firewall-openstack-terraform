# Image path QCOW2 Ubuntu
variable "imageUbuntuPath" {
  type    = string
  default = "images/ubuntu-16.04.7-server-amd64.iso.qcow2"
}

# Image path QCOW2 Debian
variable "imageDebianPath" {
  type    = string
  default = "images/debian-9.13.0-amd64-netinst.iso.qcow2"
}


# UUID of external gateway
variable "external_gateway" {
  type    = string
  default = "e65c793c-419b-498f-85c0-3ff0e98843fb"
}