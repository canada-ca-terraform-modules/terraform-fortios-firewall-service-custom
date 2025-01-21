<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_fortios"></a> [fortios](#requirement\_fortios) | >= 1.17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_fortios"></a> [fortios](#provider\_fortios) | >= 1.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [fortios_firewallservice_custom.this](https://registry.terraform.io/providers/fortinetdev/fortios/latest/docs/resources/firewallservice_custom) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_services"></a> [services](#input\_services) | List of custom firewall services | map(object()) | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_services"></a> [services](#output\_services) | n/a |
<!-- END_TF_DOCS -->