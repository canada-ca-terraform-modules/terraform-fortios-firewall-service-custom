<!-- BEGIN_TF_DOCS -->
```hcl
module "my_services" {
  source = "https://github.com/canada-ca-terraform-modules/terraform-fortios-firewall-service-custom"
  providers = {
    fortios = fortios.my_alias
  }

  services = {
    weird_service = {
      protocol = "TCP"
      tcp_portrange = "5345-5350"
    }
  }
}
```
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
| <a name="input_services"></a> [services](#input\_services) | List of custom firewall services | `map(object())` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_services"></a> [services](#output\_services) | n/a |
<!-- END_TF_DOCS -->