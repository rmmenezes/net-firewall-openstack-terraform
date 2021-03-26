# Create a instance
resource "openstack_compute_instance_v2" "UbuntuA" {
  name        = "DebianA"
  flavor_name = openstack_compute_flavor_v2.ubuntu_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name

  # Install system in volume
  block_device {
    volume_size           = 20
    destination_type      = "volume"
    delete_on_termination = true
    source_type           = "image"
    uuid                  = "a8fa8f2b-d29a-4084-8526-e559c612f3b3"
  }

  network {
    name = openstack_networking_network_v2.network02.name
    fixed_ip_v4 = "172.157.155.3"
  }
}
