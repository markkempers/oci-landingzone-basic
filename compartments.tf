resource "oci_identity_compartment" "wordpress" {
  compartment_id = var.tenancy_ocid
  description = "Compartment to install the wordpress demo"
  name = "wordpress-demo"
  enable_delete = true
}