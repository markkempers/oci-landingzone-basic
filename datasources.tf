#Fetch all AD domains in wordpress compartment
data "oci_identity_availability_domains" "domains" {
  compartment_id = var.tenancy_ocid
}

#Fetch latest Ubuntu image
data "oci_core_images" "ubuntu" {
  compartment_id = oci_identity_compartment.wordpress.id
  operating_system = var.os
  operating_system_version = var.os_version
  shape = var.compute_shape
}

#Fetch Service Gateway
data "oci_core_services" "sgw" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
  count = 1
}