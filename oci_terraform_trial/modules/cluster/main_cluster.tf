// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

resource "oci_containerengine_cluster" "test_cluster" {
  #Required
   compartment_id = "${var.compartment_ocid_cl}"
   //kubernetes_version = "${data.oci_containerengine_cluster_option.test_cluster_option.kubernetes_versions.0}"
   kubernetes_version = "${var.cluster_kubernetes_version_cl}"
   name               = "${var.cluster_name}"
   vcn_id             = "${var.vcn_id_cl}"
   //vcn_name_cl        = "${var.vcn_name_cl}"
}

output "cluster" {
  value = {
    id                 = "${oci_containerengine_cluster.test_cluster.id}"
    //kubernetes_version = "${oci_containerengine_cluster.test_cluster.kubernetes_version}"
    kubernetes_version = "${var.cluster_kubernetes_version_cl}"
    name               = "${var.cluster_name}"
  }
}