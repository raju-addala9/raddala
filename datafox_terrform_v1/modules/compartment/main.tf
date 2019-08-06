/*
 * This example file shows how to create a compartment and
 * define policies for thr compartment
 */

resource "oci_identity_compartment" "compartment1" {
  name           = "Datafox"
  description    = "compartment created by Datafox using terraform"
  compartment_id = "${var.tenancy_ocid}"
}

data "oci_identity_compartments" "compartments1" {
  compartment_id = "${oci_identity_compartment.compartment1.compartment_id}"

  filter {
    name   = "name"
    values = ["DataFox"]
  }
}

resource "oci_identity_policy" "policy" {
  name           = "policy-test"
  description    = "policy created for testing"
  compartment_id = "${oci_identity_compartment.compartment1.id}"

  statements = ["Allow group ${var.group_name} to manage all-resources in compartment ${oci_identity_compartment.compartment1.name}"]
}