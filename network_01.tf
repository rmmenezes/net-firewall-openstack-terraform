# Rede para hosts A e B
resource "openstack_networking_network_v2" "network01" {
  name           = "network01"
  admin_state_up = "true"
  shared = "true"
}

# Rede para hosts A e B
resource "openstack_networking_subnet_v2" "subnet_network01" {
  network_id = openstack_networking_network_v2.network01.id
  cidr       = "10.20.30.0/30"
  gateway_ip = "10.20.30.3"
  enable_dhcp = "false"
}

