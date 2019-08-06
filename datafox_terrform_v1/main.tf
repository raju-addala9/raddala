/*
* This terraform script creates an User, creates Group, adds user to group,
* creates compartment, defines policy for compartment,
* creates virtual cloud network and provisions a compute instance
*/

# Creates a user

module "user"{
    source = "./modules/user"
    tenancy_ocid = "${var.tenancy_ocid}"
}

# Creates a group

module "group"{
    source = "./modules/group"
    tenancy_ocid = "${var.tenancy_ocid}"
    user_id = "${module.user.user_id}"
}

# Creates a compartment

module "compartment"{
    source = "./modules/compartment"
    tenancy_ocid = "${var.tenancy_ocid}"
    group_name = "${module.group.group_name}"
}

# Create a Virtual Cloud Network

module "vcn" {
  source = "./modules/vcn"
  tenancy_ocid = "${var.tenancy_ocid}"
  compartment_ocid = "${module.compartment.compartment_id}"
  availability_domain = "${var.availability_domain}"
}

# Creates Compute Instance


module "bastion"{
    source = "./modules/compute/bastion"
    tenancy_ocid = "${var.tenancy_ocid}"
    compartment_ocid = "${module.compartment.compartment_id}"
    availability_domain = "${var.availability_domain}"
    compute_display_name = "${var.compute_display_name}"
    image_ocid = "${var.image_ocid}"
    instance_shape = "${var.instance_shape}"
    ssh_public_key = "${var.ssh_public_key}"
    subnet1_ocid = "${module.vcn.subnet1_ocid}"
}

module "mongodb"{
    source = "./modules/compute/mongodb"
    tenancy_ocid = "${var.tenancy_ocid}"
    compartment_ocid = "${module.compartment.compartment_id}"
    availability_domain = "${var.availability_domain}"
    compute_display_name2 = "${var.compute_display_name2}"
    image_ocid = "${var.image_ocid}"
    instance_shape = "${var.instance_shape}"
    ssh_public_key = "${var.ssh_public_key}"
    subnet2_ocid = "${module.vcn.subnet2_ocid}"
}