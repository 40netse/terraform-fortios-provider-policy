terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
}
# Configure the FortiOS Provider
provider "fortios" {
  hostname = "44.246.144.128"
  insecure = true
  token    = "1pQwpb987q4sn3wchcN9GHfsG0j9N3"
}
resource "fortios_system_setting_dns" "test1" {
  primary   = "8.8.8.8"
  secondary = "96.45.46.46"
}
