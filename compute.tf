#Create Wordpress serfer
resource "oci_core_instance" "wordpress" {
  count = var.webserver ? 1 : 0
  availability_domain = data.oci_identity_availability_domains.domains.availability_domains[0]["name"]
  compartment_id = oci_identity_compartment.wordpress.id
  shape = var.compute_shape
  source_details {
    source_id = data.oci_core_images.ubuntu.images[0]["id"]
    source_type = "image"
    boot_volume_size_in_gbs = "60"
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
    user_data = data.cloudinit_config.ansible.rendered
  }
  display_name = "Wordpress server"
}

#Create Database server
resource "oci_core_instance" "database" {
  count = var.dbserver ? 1 : 0
  availability_domain = data.oci_identity_availability_domains.domains.availability_domains[0]["name"]
  compartment_id = oci_identity_compartment.wordpress.id
  shape = var.compute_shape
  source_details {
    source_id = data.oci_core_images.ubuntu.images[0]["id"]
    source_type = "image"
    boot_volume_size_in_gbs = "60"
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.inet.id
    display_name = "default VNIC"
    assign_public_ip = false
  }
  shape_config {
    ocpus = var.ocpu
    memory_in_gbs = var.mem
  }
  metadata = {
    ssh_authorized_keys = var.sshkey
    user_data = data.cloudinit_config.ansible.rendered
  }
  display_name = "Database server"
}

# Create Ansible Server
resource "oci_core_instance" "ansible" {
  count = var.ansibleserver ? 1 : 0
  availability_domain = data.oci_identity_availability_domains.domains.availability_domains[0]["name"]
  compartment_id = oci_identity_compartment.wordpress.id
  shape = var.compute_shape
  source_details {
    source_id = data.oci_core_images.ubuntu.images[0]["id"]
    source_type = "image"
    boot_volume_size_in_gbs = "60"
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
  display_name = "Ansible Server"
}