# Fetch all IP from instances created and show them after run
output "public_ip_wordpress" {
  description = "All public IPs from  Wordpress machine"
  value = oci_core_instance.wordpress[*].public_ip
}

output "private_ip_wordpress" {
  description = "All private IPs from Wordpress machine"
  value = oci_core_instance.wordpress[*].private_ip
}

output "private_ip_database" {
  description = "All public IPs from  Wordpress machine"
  value = oci_core_instance.database[*].public_ip
}

output "private_ip_database" {
  description = "All private IPs from Wordpress machine"
  value = oci_core_instance.database[*].private_ip
}

output "private_ip_ansible" {
  description = "All public IPs from  Wordpress machine"
  value = oci_core_instance.ansible[*].public_ip
}

output "private_ip_ansible" {
  description = "All private IPs from Wordpress machine"
  value = oci_core_instance.ansible[*].private_ip
}