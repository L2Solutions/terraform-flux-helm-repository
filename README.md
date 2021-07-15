<!--- start terraform-docs --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_kubernetes-alpha"></a> [kubernetes-alpha](#requirement\_kubernetes-alpha) | >= 0.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |
| <a name="provider_kubernetes-alpha"></a> [kubernetes-alpha](#provider\_kubernetes-alpha) | >= 0.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes-alpha_kubernetes_manifest.this](https://registry.terraform.io/providers/hashicorp/kubernetes-alpha/latest/docs/resources/kubernetes_manifest) | resource |
| [kubernetes_secret.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_credentials"></a> [credentials](#input\_credentials) | Username and password for basic auth | <pre>object({<br>    username = string<br>    password = string<br>  })</pre> | `null` | no |
| <a name="input_existing_secret"></a> [existing\_secret](#input\_existing\_secret) | Existing ssh/https secret in the namespace for auth | `string` | `null` | no |
| <a name="input_interval"></a> [interval](#input\_interval) | How frequently to pull changes from the source repository | `string` | `"10m0s"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the HelmRepository resource | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace location to create the HelmRepository | `string` | `"flux-system"` | no |
| <a name="input_url"></a> [url](#input\_url) | URL of the helm repository | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_name"></a> [secret\_name](#output\_secret\_name) | Auth secret name |
