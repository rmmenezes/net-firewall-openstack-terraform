# Create a instance
resource "openstack_compute_instance_v2" "DebianA" {
  name        = "DebianA"
  flavor_name = openstack_compute_flavor_v2.debian_flavor.name
  # security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name

 # Install system in volume
  block_device {
    uuid                  = openstack_blockstorage_volume_v3.debian_A_volume.id
    destination_type      = "volume"
    source_type           = "volume"
    boot_index            = 0
    delete_on_termination = true
  }

   network {
    port = openstack_networking_port_v2.port_network01_DebianA.id
  }
}

resource "openstack_blockstorage_volume_v3" "debian_A_volume" {
  name        = "debian_A_volume"
  image_id    = openstack_images_image_v2.Debian.id
  region      = "RegionOne"
  size        = 25
}


resource "openstack_networking_port_v2" "port_network01_DebianA" {
  name               = "port_network01_DebianA"
  network_id         = openstack_networking_network_v2.network01.id
  admin_state_up     = true
  port_security_enabled = false
  # security_group_ids = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]

  fixed_ip {
    subnet_id  = openstack_networking_subnet_v2.subnet_network01.id
    ip_address = "10.20.30.3"
  }
}
