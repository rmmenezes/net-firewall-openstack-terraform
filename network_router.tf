

resource "openstack_networking_router_v2" "router" {
  name                = "router"
  admin_state_up      = true
  # external_network_id = "f2e717c1-bd23-44c0-a9bc-3b537bba9c3e" #ID-PUBLIC-NET
}

resource "openstack_networking_router_interface_v2" "interface_network01" {
  router_id = "${openstack_networking_router_v2.router.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_network01.id}"
}

resource "openstack_networking_router_interface_v2" "interface_network03" {
  router_id = "${openstack_networking_router_v2.router.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_network02.id}"
}