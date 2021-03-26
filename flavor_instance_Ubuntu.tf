#create flavor
resource "openstack_compute_flavor_v2" "ubuntu_flavor" {
  name  = "ubuntu_flavor"
  ram   = "2024"
  vcpus = "2"
  disk  = "25"
  is_public = true
}

