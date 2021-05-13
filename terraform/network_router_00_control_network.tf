resource "openstack_networking_router_v2" "control_router" {
  name                = "control_router"
  admin_state_up      = true
  external_network_id = var.external_gateway
  enable_snat = true
}

resource "openstack_networking_router_interface_v2" "interface_02" {
  router_id = openstack_networking_router_v2.control_router.id
  subnet_id = openstack_networking_subnet_v2.subnet_control_network.id
}