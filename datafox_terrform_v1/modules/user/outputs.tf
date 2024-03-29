# Output variables from created user

output "users1" {
  value = "${data.oci_identity_users.users1.users}"
}

output "user_id" {
  value = "${oci_identity_user.user1.id}"
}

output "user-password" {
  sensitive = false
  value     = "${oci_identity_ui_password.password1.password}"
}

output "user-api-key" {
  value = "${oci_identity_api_key.api-key1.key_value}"
}

output "auth-token" {
  value = "${oci_identity_auth_token.auth-token1.token}"
}

output "customer-secret-key" {
  value = [
    "${oci_identity_customer_secret_key.customer-secret-key1.key}",
    "${data.oci_identity_customer_secret_keys.customer-secret-keys1.customer_secret_keys}",
  ]
}