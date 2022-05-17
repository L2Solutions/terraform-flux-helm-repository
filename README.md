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

| Name                                                                        | Version           |
| --------------------------------------------------------------------------- | ----------------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform)    | >= 1.0.0, < 2.0.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement_kubernetes) | >= 2.4.1, < 3.0.0 |

## Providers

| Name                                                                  | Version |
| --------------------------------------------------------------------- | ------- |
| <a name="provider_kubernetes"></a> [kubernetes](#provider_kubernetes) | 2.3.2   |

## Modules

No modules.

## Resources

| Name                                                                                                                    | Type     |
| ----------------------------------------------------------------------------------------------------------------------- | -------- |
| [kubernetes_manifest.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |
| [kubernetes_secret.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret)     | resource |

## Inputs

| Name                                                                           | Description                                               | Type                                                                   | Default         | Required |
| ------------------------------------------------------------------------------ | --------------------------------------------------------- | ---------------------------------------------------------------------- | --------------- | :------: |
| <a name="input_credentials"></a> [credentials](#input_credentials)             | Username and password for basic auth                      | <pre>object({<br> username = string<br> password = string<br> })</pre> | `null`          |    no    |
| <a name="input_existing_secret"></a> [existing_secret](#input_existing_secret) | Existing ssh/https secret in the namespace for auth       | `string`                                                               | `null`          |    no    |
| <a name="input_interval"></a> [interval](#input_interval)                      | How frequently to pull changes from the source repository | `string`                                                               | `"10m0s"`       |    no    |
| <a name="input_name"></a> [name](#input_name)                                  | Name of the HelmRepository resource                       | `string`                                                               | n/a             |   yes    |
| <a name="input_namespace"></a> [namespace](#input_namespace)                   | Namespace location to create the HelmRepository           | `string`                                                               | `"flux-system"` |    no    |
| <a name="input_url"></a> [url](#input_url)                                     | URL of the helm repository                                | `string`                                                               | n/a             |   yes    |

## Outputs

| Name                                                                 | Description      |
| -------------------------------------------------------------------- | ---------------- |
| <a name="output_secret_name"></a> [secret_name](#output_secret_name) | Auth secret name |

<!-- END_TF_DOCS -->
