# Rede para hosts A e B
resource "openstack_networking_network_v2" "network01" {
  name           = "network01"
  admin_state_up = "true"
  shared = "true"
  port_security_enabled = false

}

# Rede para hosts A e B
resource "openstack_networking_subnet_v2" "subnet_network01" {
  network_id = openstack_networking_network_v2.network01.id
  cidr       = "10.20.30.0/29"
  gateway_ip = "10.20.30.5"
  enable_dhcp = "true"
}

