output "manifest" {
  value = local.manifest
}

output "name" {
  description = "Name of the object with suffix(if enabled)"
  value       = local.name
}

output "namespace" {
  description = "Namespace the object was applied to"
  values      = local.namespace
}

output "kind" {
  description = "Kubernetes API Kind"
  value       = "HelmRepository"
}

output "secret_name" {
  description = "Auth secret name"
  value       = local.secret_name
}
