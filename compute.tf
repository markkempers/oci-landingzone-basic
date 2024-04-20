#Create Wordpress serfer
resource "oci_core_instance" "wordpress" {
  availability_domain = data.oci_identity_availability_domains.domains.availability_domains[0]["name"]
  compartment_id = oci_identity_compartment.wordpress.id
  shape = var.compute_shape
  source_details {
    source_id = data.oci_core_images.ubuntu.images[0]["id"]
    source_type = "image"
    boot_volume_size_in_gbs = "100"
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.inet.id
    display_name = "default VNIC"
  }
  shape_config {
    ocpus = var.ocpu
    memory_in_gbs = var.mem
  }
  metadata = {
    ssh_authorized_keys = var.sshkey
  }
  display_name = "Wordpress server"
}

# Add temporary Ansible compute
resource "oci_core_instance" "ansible" {
  availability_domain = data.oci_identity_availability_domains.domains.availability_domains[0]["name"]
  compartment_id = oci_identity_compartment.wordpress.id
  shape = var.compute_shape
  source_details {
    source_id = data.oci_core_images.ubuntu.images[0]["id"]
    source_type = "image"
    boot_volume_size_in_gbs = "100"
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.inet.id
    display_name = "default VNIC"
  }
  shape_config {
    ocpus = var.ocpu
    memory_in_gbs = var.mem
  }
  metadata = {
    ssh_authorized_keys = var.sshkey
  }
  display_name = "Ansible server"
}