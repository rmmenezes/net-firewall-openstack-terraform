# Rede de controle
resource "openstack_networking_network_v2" "control_network" {
  name           = "control_network"
  admin_state_up = "true"
  shared = "true"
  port_security_enabled = false

}

# Sub rede de controle
resource "openstack_networking_subnet_v2" "subnet_control_network" {
  network_id = openstack_networking_network_v2.control_network.id
  cidr       = "192.168.200.0/29"
  enable_dhcp = "true"
}

