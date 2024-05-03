# Create security list for subnet
resource "oci_core_security_list" "seclist" {
  compartment_id = oci_identity_compartment.wordpress.id
  vcn_id = oci_core_vcn.default.id
  display_name = "Security List for Wordpress Demo"
  ingress_security_rules {
    protocol = local.tcp_protocol_number
    source = var.sec_incoming_cidr
    description = "Incoming HTTP Port - Own CIDR only"
    tcp_options {
      min = local.http_port_number
      max = local.http_port_number
    }
  }
  ingress_security_rules {
    protocol = local.tcp_protocol_number
    source = var.sec_incoming_cidr
    description = "Incoming SSH Port - Own CIDR only"
    tcp_options {
      min = local.ssh_port_number
      max = local.ssh_port_number
    }
  }
  ingress_security_rules {
    protocol = local.tcp_protocol_number
    source = var.sec_incoming_cidr
    description = "Incoming HTTPS Port - Own CIDR only"
    tcp_options {
      min = local.https_port_number
      max = local.https_port_number
    }
  }
  ingress_security_rules {
    protocol = local.tcp_protocol_number
    source = var.local_subnet
    description = "Permit local SSH connections"
    tcp_options {
      min = local.ssh_port_number
      max = local.ssh_port_number
    }
  }
  ingress_security_rules {
    protocol = local.tcp_protocol_number
    source = var.local_subnet
    description = "Permit local MYSQL connections"
    tcp_options {
      min = local.mysql_port_number
      max = local.mysql_port_number
    }
  }
  egress_security_rules {
    protocol = local.all_protocols
    destination = "0.0.0.0/0"
  }
}

locals {
  http_port_number          = "80"
  https_port_number         = "443"
  mysql_port_number         = "3306"
  ssh_port_number           = "22"
  tcp_protocol_number       = "6"
  all_protocols             = "all"
}