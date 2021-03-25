

resource "openstack_networking_router_v2" "router" {
  name                = "router"
  admin_state_up      = true
#   external_network_id = "738ae82f-3108-45cf-b560-838d85d8b9ff" #ID-PUBLIC-NET
}

resource "openstack_networking_router_interface_v2" "interface_network01" {
  router_id = "${openstack_networking_router_v2.router.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_network01.id}"
}

resource "openstack_networking_router_interface_v2" "interface_network03" {
  router_id = "${openstack_networking_router_v2.router.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_network02.id}"
}