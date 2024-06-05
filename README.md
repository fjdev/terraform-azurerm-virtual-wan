<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | github.com/fjdev/terraform-azurerm-resource-group | n/a |
| <a name="module_virtual_hub"></a> [virtual\_hub](#module\_virtual\_hub) | github.com/fjdev/terraform-azurerm-virtual-hub | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_wan.vwan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_wan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_branch_to_branch_traffic"></a> [allow\_branch\_to\_branch\_traffic](#input\_allow\_branch\_to\_branch\_traffic) | (Optional) Boolean flag to specify whether branch to branch traffic is allowed. Defaults to true. | `bool` | `true` | no |
| <a name="input_deploy_resource_group"></a> [deploy\_resource\_group](#input\_deploy\_resource\_group) | (Optional) Specifies whether to deploy the resource group or not. Defaults to true. | `bool` | `true` | no |
| <a name="input_disable_vpn_encryption"></a> [disable\_vpn\_encryption](#input\_disable\_vpn\_encryption) | (Optional) Boolean flag to specify whether VPN encryption is disabled. Defaults to false. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | (Optional) The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name of the Virtual WAN. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_office365_local_breakout_category"></a> [office365\_local\_breakout\_category](#input\_office365\_local\_breakout\_category) | (Optional) Specifies the Office365 local breakout category. Possible values include: Optimize, OptimizeAndAllow, All, None. Defaults to None. | `string` | `"None"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the Virtual WAN. | `any` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | (Optional) Specifies the Virtual WAN type. Possible Values include: Basic and Standard. Defaults to Standard. | `string` | `"Standard"` | no |
| <a name="input_virtual_hubs"></a> [virtual\_hubs](#input\_virtual\_hubs) | (Optional) A map of Virtual Hubs to create within the Virtual WAN. | <pre>map(object({<br>    deploy_resource_group  = optional(bool)<br>    resource_group_name    = optional(string)<br>    location               = optional(string)<br>    address_prefix         = optional(string)<br>    hub_routing_preference = optional(string)<br>    route = optional(list(object({<br>      address_prefixes    = list(string)<br>      next_hop_ip_address = string<br>    })))<br>    sku        = optional(string)<br>    managed_by = optional(string)<br>    tags       = optional(any)<br>  }))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Virtual WAN. |
<!-- END_TF_DOCS -->