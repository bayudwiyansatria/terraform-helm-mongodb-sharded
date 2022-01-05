output "postgresql_version" {
  sensitive  = false
  value      = var.mongodb_version
  depends_on = [
    helm_release.mongodb-sharded
  ]
}

output "username" {
  sensitive  = false
  value      = "root"
  depends_on = [
    helm_release.mongodb-sharded
  ]
}

output "password" {
  sensitive  = true
  value      = var.mongodb_password
  depends_on = [
    helm_release.mongodb-sharded
  ]
}