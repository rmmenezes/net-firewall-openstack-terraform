# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  auth_url    = "https://192.168.100.200:5000"
  password    = "dbd9965aacd15a4ea4a8b7ea41e66db96003f90415"
  # auth_url    = "https://192.168.122.114"
  # region      = "Default"
  insecure    = "true"
}