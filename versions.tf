terraform {
  required_providers {
    kubernetes-alpha = {
      source  = "hashicorp/kubernetes-alpha"
      version = ">= 0.5.0"
    }
  }

  required_version = ">= 1.0.0"
}
