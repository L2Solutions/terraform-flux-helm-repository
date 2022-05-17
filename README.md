# Terraform Flux Helm Repository Module

This module applies a `flux` `HelmRepository` custom resource using the Terraform `helm` provider and its `helm_release` resource. Using the `helm` provider allows for installing `flux` and configuring custom resources for it in one apply.

## Additional Flux Module Resources

The below modules provide support for installation and individual configuration of `fluxcd` Custom Resources:

[Flux Install Module](https://registry.terraform.io/modules/OmniTeqSource/install/flux/latest)

[Flux GitRepository Module](https://registry.terraform.io/modules/OmniTeqSource/git-repository/flux/latest)

[Flux Kustomization Module](https://registry.terraform.io/modules/OmniTeqSource/kustomization/flux/latest)

[Flux HelmRelease Module](https://registry.terraform.io/modules/OmniTeqSource/helm-release/flux/latest)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.5.1, < 3.0.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.4.1, < 3.0.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.1.3, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.11.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.this](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_secret.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_credentials"></a> [credentials](#input\_credentials) | Username and password for basic auth | <pre>object({<br>    username = string<br>    password = string<br>  })</pre> | `null` | no |
| <a name="input_existing_secret"></a> [existing\_secret](#input\_existing\_secret) | Existing ssh/https secret in the namespace for auth | `string` | `null` | no |
| <a name="input_interval"></a> [interval](#input\_interval) | How frequently to pull changes from the source repository | `string` | `"10m0s"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the HelmRepository resource | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace location to create the HelmRepository | `string` | `"flux-system"` | no |
| <a name="input_random_suffix"></a> [random\_suffix](#input\_random\_suffix) | Add a random alpha-numeric suffix to resource names(prevents helm release collision) | `bool` | `true` | no |
| <a name="input_url"></a> [url](#input\_url) | URL of the helm repository | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | Auth secret name |
<!-- END_TF_DOCS -->
