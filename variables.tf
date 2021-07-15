variable "name" {
  description = "Name of the HelmRepository resource"
  type        = string
}

variable "namespace" {
  description = "Namespace location to create the HelmRepository"
  default     = "flux-system"
  type        = string
}

variable "url" {
  description = "URL of the helm repository"
  type        = string
}

variable "interval" {
  description = "How frequently to pull changes from the source repository"
  default     = "10m0s"
  type        = string
}

variable "existing_secret" {
  description = "Existing ssh/https secret in the namespace for auth"
  default     = null
  type        = string
}

variable "credentials" {
  description = "Username and password for basic auth"
  default     = null
  type = object({
    username = string
    password = string
  })
}
