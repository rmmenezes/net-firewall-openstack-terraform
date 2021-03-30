# Image path QCOW2 Ubuntu
variable "imageUbuntuPath" {
  type    = string
  default = "images/mini.iso.qcow2"
}

# Image path QCOW2 Debian
variable "imageDebianPath" {
  type    = string
  default = "images/debian-9.13.0-amd64-netinst.iso.qcow2"
}


# UUID of external gateway
variable "external_gateway" {
  type    = string
  default = "9ee4ed16-f5a1-4b97-8a0c-796647a91b6e"
}