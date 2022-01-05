output "mongodb_version" {
  sensitive   = false
  value       = var.mongodb_version
  description = "MongoDB Version"
  depends_on  = [
    helm_release.mongodb-sharded
  ]
}

output "username" {
  sensitive   = false
  value       = "root"
  description = "MongoDB username for login"
  depends_on  = [
    helm_release.mongodb-sharded
  ]
}

output "password" {
  sensitive   = true
  description = "MongoDB password for login"
  value       = var.mongodb_password
  depends_on  = [
    helm_release.mongodb-sharded
  ]
}