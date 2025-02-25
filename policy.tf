resource "fortios_firewall_policy" "example_policy" {
  name        = "Allow_Internal_to_Internet"
  action      = "accept"
  status      = "enable"
  schedule    = "always"
  nat         = "enable"

  srcintf {
    name = "port1" # Change to your internal interface
  }

  dstintf {
    name = "port2" # Change to your external/WAN interface
  }

  srcaddr {
    name = "all"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "ALL"
  }

  logtraffic = "all"  # Log all traffic

  comments = "Allow internal users to access the internet with NAT enabled"
}


provider "fortios" {
  hostname = "your-fortigate-ip"
  token    = "your-api-token"
  insecure = true
}

resource "fortios_firewall_policy" "block_telnet" {
  name     = "Block_Telnet"
  action   = "deny"
  status   = "enable"
  schedule = "always"

  srcintf {
    name = "port1" # Adjust to match your source interface
  }

  dstintf {
    name = "port2" # Adjust to match your destination interface
  }

  srcaddr {
    name = "all"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "TELNET" # Specifically blocking Telnet (port 23)
  }

  logtraffic = "all"  # Log blocked traffic for monitoring

  comments = "Deny all Telnet traffic from internal to external network"
}


