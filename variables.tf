variable "region" {
  type = string
  default = "eu-amsterdam-1"
}

variable "tenancy_ocid" {
    type = string
    default = "ocid.xxxx" 
}

#Compute variables

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