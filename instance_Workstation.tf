# Create a instance
resource "openstack_compute_instance_v2" "basicWorkstation" {
  name        = "Workstation"
  image_id  = openstack_images_image_v2.workstation.id
  flavor_name = openstack_compute_flavor_v2.workstation_flavor.name
  security_groups = [openstack_compute_secgroup_v2.ssh.id, openstack_compute_secgroup_v2.icmp.id]
  key_pair  = openstack_compute_keypair_v2.keypairGRFICSv2.name

  network {
    name = openstack_networking_network_v2.network02.name
    fixed_ip_v4 = "192.168.95.5"
  }
}

