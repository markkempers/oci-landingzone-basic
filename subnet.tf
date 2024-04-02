# Subnet that is routed over the internet using internet gateway
resource "oci_core_subnet" "inet" {
  cidr_block = "10.10.10.0/24"
  compartment_id = oci_identity_compartment.wordpress.id
  vcn_id = oci_core_vcn.default.id
  display_name = "Subnet with Internet Access"
  route_table_id = oci_core_route_table.igw.id
}