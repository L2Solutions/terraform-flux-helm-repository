resource "random_string" "this" {
  keepers = {
    # Using `var.name` is required here to prevent cyclic dependency.
    name = var.name
  }

  upper   = false
  special = false
  length  = 8
}

resource "helm_release" "this" {
  name       = local.name
  repository = "https://omniteqsource.github.io/charts"
  chart      = "null"
  values     = [yamlencode({ manifests = [local.manifest] })]
}

resource "kubernetes_secret" "this" {
  count = local.credentials != null ? 1 : 0

  depends_on = [helm_release.this]

  metadata {
    name      = local.secret_name
    namespace = local.namespace
  }

  data = {
    username = local.credentials.username
    password = local.credentials.password
  }
}
