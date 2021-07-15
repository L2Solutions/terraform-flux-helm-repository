resource "kubernetes_manifest" "this" {
  provider = kubernetes-alpha

  manifest = local.repository
}

resource "kubernetes_secret" "this" {
  count = local.credentials != null ? 1 : 0

  depends_on = [kubernetes_manifest.this]

  metadata {
    name      = local.secret_name
    namespace = local.namespace
  }

  data = {
    username = local.credentials.username
    password = local.credentials.password
  }
}
