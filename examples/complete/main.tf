provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "k3d-tftest"
  experiments {
    manifest_resource = true
  }
}

module "flux-install" {
  count   = 1
  source  = "L2Solutions/install/flux"
  version = "0.0.27"
}

# Set to true after flux-install. GitRepository CRD need to be created before the repo instances may be created.
locals {
  install_complete = true
}

module "helm-repository-basic" {
  count = local.install_complete ? 1 : 0

  source = "../../"

  name = "basic"
  url  = "https://charts.helm.sh/stable"

  # This will prevent a condition where the namespace cannot be removed if a CR for a CRD still exists.
  depends_on = [module.flux-install]
}

module "helm-repository-auth" {
  count = local.install_complete ? 1 : 0

  source = "../../"

  name     = "auth"
  url      = "https://charts.helm.sh/stable"
  interval = "1m"

  credentials = {
    username = "test"
    password = "password"
  }

  # This will prevent a condition where the namespace cannot be removed if a CR for a CRD still exists.
  depends_on = [module.flux-install]
}
