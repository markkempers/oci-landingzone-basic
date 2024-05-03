variable "region" {
  type = string
  default = "eu-amsterdam-1"
}

variable "tenancy_ocid" {
    type = string
    default = "ocid.xxxx" 
}

#Compute variables

variable "webserver" {
  type = bool
  default = true
}

variable "dbserver" {
  type = bool
  default = false
}

variable "ansibleserver" {
  type = bool
  default = false
}
variable "os" {
  default = " Ubuntu"
}

variable "os_version" {
    default = "22.04"
}

variable "compute_shape" {
  default = "VM.Standard.E4.Flex"
}

variable "ocpu" {
  default = "2"
}

variable "mem" {
  default = "16"
}

variable "sshkey" {
  default = "sshkey"
}
variable "sshkey_ansible" {
  default = "sshkey"
}

# Networking variables
variable "sec_incoming_cidr" {
  default = "0.0.0.0/0"
}

variable "inet_subnet" {
  default = "10.10.10.0/24"
}