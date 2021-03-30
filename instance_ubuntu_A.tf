# Create a instance
resource "openstack_compute_instance_v2" "UbuntuA" {
  name        = "UbuntuA"
  flavor_name = openstack_compute_flavor_v2.ubuntu_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name

 # Install system in volume
  block_device {
    uuid                  = openstack_blockstorage_volume_v3.ubuntu_A_volume.id
    destination_type      = "volume"
    source_type           = "volume"
    boot_index            = 0
    delete_on_termination = true
  }

  network {
    name = openstack_networking_network_v2.network02.name
    fixed_ip_v4 = "172.157.155.3"
  }
}


resource "openstack_blockstorage_volume_v3" "ubuntu_A_volume" {
  name        = "ubuntu_A_volume"
  image_id    = openstack_images_image_v2.Ubuntu.id
  region      = "RegionOne"
  size        = 50
  enable_online_resize = true
}