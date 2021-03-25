resource "openstack_images_image_v2" "Debian" {
  name        = "Debian.qcow2"
  disk_format = "qcow2"
  visibility  = "public"
  local_file_path        = "images/Debian.qcow2"
  container_format = "bare"
}

resource "openstack_images_image_v2" "Ubuntu" {
  name        = "Ubuntu.qcow2"
  disk_format = "qcow2"
  visibility  = "public"
  local_file_path        = "images/Ubuntu.qcow2"
  container_format = "bare"
}
