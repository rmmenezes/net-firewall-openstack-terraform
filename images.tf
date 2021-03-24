resource "openstack_images_image_v2" "Debian" {
  name        = "debian.qcow2"
  disk_format = "qcow2"
  visibility  = "public"
  local_file_path        = "images/debian.qcow2"
  container_format = "bare"
}
