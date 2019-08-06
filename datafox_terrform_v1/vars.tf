# Variables Exported from env.sh

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}
variable "ssh_public_key" {}
variable "instance_shape" {}
variable "image_ocid" {}
variable "ssh_authorized_private_key" {}

# Uses Default Value

variable "instance_count" {
  default="1"
}

# Provide a name for the instance name

variable "compute_display_name" {
  default="datafox-bastion"
}

variable "compute_display_name2" {
  default="datafoxmongo-db"
}
variable "availability_domain" {
  default="1"
}
