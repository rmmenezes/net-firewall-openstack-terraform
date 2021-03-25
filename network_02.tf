# Rede para hosts C e D
resource "openstack_networking_network_v2" "network02" {
  name           = "network02"
  admin_state_up = "true"
  shared = "true"
}

# Rede para hosts C e D
resource "openstack_networking_subnet_v2" "subnet_network02" {
  network_id = openstack_networking_network_v2.network02.id
  cidr       = "172.157.155.0/29"
  gateway_ip = "172.157.155.1"
  enable_dhcp = "false"
}
