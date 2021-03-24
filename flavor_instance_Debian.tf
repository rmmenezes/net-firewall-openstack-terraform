#create flavor
resource "openstack_compute_flavor_v2" "debian_flavor" {
  name  = "debian_flavor"
  ram   = "024"
  vcpus = "2"
  disk  = "10"
  is_public = true
}

