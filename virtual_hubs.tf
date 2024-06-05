module "virtual_hub" {
  for_each = var.virtual_hubs != null ? var.virtual_hubs : {}

  source = "github.com/fjdev/terraform-azurerm-virtual-hub"

  name                   = each.key
  deploy_resource_group  = coalesce(each.value.deploy_resource_group, each.value.resource_group_name != null ? true : false)
  resource_group_name    = coalesce(each.value.resource_group_name, var.deploy_resource_group ? module.resource_group[0].name : var.resource_group_name)
  location               = coalesce(each.value.location, var.location)
  address_prefix         = each.value.address_prefix
  hub_routing_preference = each.value.hub_routing_preference
  route                  = each.value.route
  sku                    = each.value.sku
  virtual_wan_id         = azurerm_virtual_wan.vwan.id
  managed_by             = each.value.managed_by
  tags                   = coalesce(each.value.tags, try(var.tags.virtual_hub, null))
}
