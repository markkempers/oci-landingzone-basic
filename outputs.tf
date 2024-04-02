# Fetch all IP from instances created and show them after run
output "public_ip" {
  description = "All public IPs from  Wordpress machine"
  value = oci_core_instance.wordpress.public_ip
}

output "private_ip" {
  description = "All private IPs from Wordpress machine"
  value = oci_core_instance.wordpress.private_ip
}