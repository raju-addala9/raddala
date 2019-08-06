// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.
data "oci_identity_availability_domain" "ad1" {
  compartment_id = "${var.tenancy_ocid_cl}"
  ad_number      = 1
}

data "oci_identity_availability_domain" "ad2" {
  compartment_id = "${var.tenancy_ocid_cl}"
  ad_number      = 2
}



