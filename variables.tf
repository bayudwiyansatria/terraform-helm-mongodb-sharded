#---------------------------------------------------------------------------------------------------
# Kubernetes
#---------------------------------------------------------------------------------------------------
variable "kubernetes_namespace" {
  sensitive   = false
  type        = string
  description = "Kubernetes Namespace"
  default     = "mongodb"
}

variable "helm_release_name" {
  sensitive   = false
  type        = string
  description = "Helm Release Name"
  default     = "mongodb"
}

#---------------------------------------------------------------------------------------------------
# Storage
#---------------------------------------------------------------------------------------------------
variable "kubernetes_storage_class" {
  sensitive   = false
  type        = string
  description = "Kubernetes Storage Class"
  default     = ""
}

variable "kubernetes_storage_allocation_size_config" {
  sensitive   = false
  type        = string
  description = "MongoDB Storage Config Server Allocation Size"
  default     = "8Gi"
}

variable "kubernetes_storage_allocation_size_shard" {
  sensitive   = false
  type        = string
  description = "MongoDB Storage Shard Server Allocation Size"
  default     = "8Gi"
}

#---------------------------------------------------------------------------------------------------
# MongoDB
#---------------------------------------------------------------------------------------------------
variable "mongodb_version" {
  sensitive   = false
  type        = string
  description = "MongoDB version"
  default     = "4.4.11"
}

variable "mongodb_router_count" {
  sensitive   = false
  type        = number
  description = "Total Mongos"
  default     = 1
}

variable "mongodb_config_count" {
  sensitive   = false
  type        = number
  description = "Total MongoDB Config Server"
  default     = 1
}

variable "mongodb_server_count" {
  sensitive   = false
  type        = number
  description = "Total MongoDB Server"
  default     = 1
}

#---------------------------------------------------------------------------------------------------
# Authentication
#---------------------------------------------------------------------------------------------------
variable "mongodb_username" {
  sensitive   = false
  description = "Username"
  default     = "mongodb"
}

variable "mongodb_password" {
  sensitive   = true
  description = "MongoDB Password"
}
