locals {
  name      = var.name
  namespace = var.namespace
  url       = var.url
  interval  = var.interval

  existing_secret = var.existing_secret
  credentials     = var.credentials
}

locals {
  secret_name = local.credentials != null ? "helm-repository-${local.name}" : local.existing_secret
}

locals {
  repository = {
    apiVersion = "source.toolkit.fluxcd.io/v1beta1"
    kind       = "HelmRepository"
    metadata = {
      name       = local.name
      namespace  = local.namespace
      finalizers = ["finalizers.fluxcd.io"]
    }
    spec = merge(
      {
        interval = local.interval
        url      = local.url
      },
      local.secret_name != null
      ? {
        secretRef = {
          name = local.secret_name
        }
      }
      : {}
    )
  }
}
