# Create a instance
resource "openstack_compute_instance_v2" "DebianB" {
  name        = "DebianB"
  flavor_name = openstack_compute_flavor_v2.debian_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name

 # Install system in volume
  block_device {
    uuid                  = openstack_blockstorage_volume_v3.debian_B_volume.id
    destination_type      = "volume"
    source_type           = "volume"
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    name = openstack_networking_network_v2.network01.name
    fixed_ip_v4 = "10.20.30.4"
  }
}


resource "openstack_blockstorage_volume_v3" "debian_B_volume" {
  name        = "debian_B_volume"
  image_id    = openstack_images_image_v2.Debian.id
  region      = "RegionOne"
  size        = 50
  enable_online_resize = true
}