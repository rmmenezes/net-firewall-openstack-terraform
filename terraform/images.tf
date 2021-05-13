resource "openstack_images_image_v2" "Debian" {
  name              = "Debian.qcow2"
  disk_format       = "qcow2"
  visibility        = "public"
  local_file_path   = var.imageDebianPath
  container_format  = "bare"
}

resource "openstack_images_image_v2" "Ubuntu" {
  name              = "Ubuntu.qcow2"
  disk_format       = "qcow2"
  visibility        = "public"
  local_file_path   = var.imageUbuntuPath
  container_format  = "bare"
}
