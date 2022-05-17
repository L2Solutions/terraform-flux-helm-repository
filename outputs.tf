output "manifest" {
  value = local.manifest
}

output "name" {
  description = "Name of the repository resource with prefix(if enabled)"
  value       = local.name
}

output "secret_name" {
  description = "Auth secret name"
  value       = local.secret_name
}
