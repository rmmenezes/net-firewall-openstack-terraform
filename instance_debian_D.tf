# Create a instance
resource "openstack_compute_instance_v2" "DebianD" {
  name        = "DebianD"
  flavor_name = openstack_compute_flavor_v2.debian_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypair.name
  
  # Install system in volume
  block_device {
    volume_size           = 20
    destination_type      = "volume"
    delete_on_termination = true
    source_type           = "image"
    uuid                  = "f841047a-dfe5-46dd-a916-3870bb1ba265"
  }


  network {
    name = openstack_networking_network_v2.network02.name
    fixed_ip_v4 = "172.157.155.3"
  }
}

