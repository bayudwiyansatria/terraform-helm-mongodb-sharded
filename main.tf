resource "helm_release" "mongodb-sharded" {
  name             = var.helm_release_name
  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "mongodb-sharded"
  version          = "3.10.2"
  namespace        = var.kubernetes_namespace
  create_namespace = true

  set {
    name  = "mongos.replicas"
    value = var.mongodb_router_count
  }

  set {
    name  = "configsvr.replicas"
    value = var.mongodb_config_count
  }

  set {
    name  = "shards"
    value = var.mongodb_server_count
  }

  set {
    name  = "image.tag"
    value = var.mongodb_version
  }

  set {
    name  = "configsvr.persistence.size"
    value = var.kubernetes_storage_allocation_size_config
  }
  set {
    name  = "shardsvr.persistence.size"
    value = var.kubernetes_storage_allocation_size_shard
  }


  #-------------------------------------------------------------------------------------------------
  # Authentication
  #-------------------------------------------------------------------------------------------------
  set_sensitive {
    name  = "mongodbRootPassword"
    value = var.mongodb_password
  }

  #-------------------------------------------------------------------------------------------------
  # Common
  #-------------------------------------------------------------------------------------------------
  set {
    name  = "fullnameOverride"
    value = var.helm_release_name
  }

  set {
    name  = "volumePermissions.enabled"
    value = true
  }

  set {
    name  = "volumePermissionsImage.tag"
    value = "10"
  }

  set {
    name  = "persistence.storageClass"
    value = var.kubernetes_storage_class
  }
}