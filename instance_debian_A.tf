# Create a instance
resource "openstack_compute_instance_v2" "DebianA" {
  name        = "Debian_A"
  image_id  = openstack_images_image_v2.Debian.id
  flavor_name = openstack_compute_flavor_v2.debian_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name

  network {
    name = openstack_networking_network_v2.network01.name
    fixed_ip_v4 = "10.20.30.1"
  }
}

