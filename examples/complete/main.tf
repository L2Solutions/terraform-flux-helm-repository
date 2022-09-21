provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "k3d-tftest"
}

provider "helm" {
  kubernetes {
    config_path    = "~/.kube/config"
    config_context = "k3d-tftest"
  }
}

module "flux-install" {
  source  = "skyfjell/install/flux"
  version = "1.0.4"
}

module "helm-repository-basic" {
  source = "../../"

  name = "basic"
  url  = "https://charts.helm.sh/stable"

  # This will prevent a condition where the namespace cannot be removed if a CR for a CRD still exists.
  depends_on = [module.flux-install]
}

module "helm-repository-auth" {
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
