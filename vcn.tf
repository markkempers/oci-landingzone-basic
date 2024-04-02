#Create VCN for Wordpress
resource "oci_core_vcn" "default" {
  compartment_id = oci_identity_compartment.wordpress.id
  cidr_block = "10.10.0.0/16"
  display_name = "Default VCN"
  dns_label = "defaultvcn"
}

# Create an internet gateway in default VCN
resource "oci_core_internet_gateway" "igw" {
  compartment_id = oci_identity_compartment.wordpress.id
  vcn_id = oci_core_vcn.default.id
  display_name = "Internet Gateway"
}

# Create routing table for internet access
resource "oci_core_route_table" "igw" {
  compartment_id = oci_identity_compartment.wordpress.id
  vcn_id = oci_core_vcn.default.id
  route_rules {
    network_entity_id = oci_core_internet_gateway.igw.id
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
  }
  display_name = "Internet Gateway RT"
}