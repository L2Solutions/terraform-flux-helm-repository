terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.3.2, < 3.0.0"
    }
    kubernetes-alpha = {
      source  = "hashicorp/kubernetes-alpha"
      version = ">= 0.5.0, < 1.0.0"
    }
  }

  required_version = ">= 1.0.0, < 2.0.0"
}
