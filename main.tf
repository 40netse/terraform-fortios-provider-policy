terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
}
# Configure the FortiOS Provider
provider "fortios" {
  hostname = "35.160.255.63"
  insecure = true
  token = "scrbpwNmQxhxqpkwfmQ35ght7ymz85"
}
resource "fortios_system_setting_dns" "test1" {
  primary = "96.45.45.45"
  secondary = "96.45.46.46"
}