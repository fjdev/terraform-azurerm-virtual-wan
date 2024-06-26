variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Virtual WAN. Changing this forces a new resource to be created."
}

variable "deploy_resource_group" {
  type        = bool
  default     = true
  description = "(Optional) Specifies whether to deploy the resource group or not. Defaults to true."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the Virtual WAN. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "disable_vpn_encryption" {
  type        = bool
  default     = false
  description = "(Optional) Boolean flag to specify whether VPN encryption is disabled. Defaults to false."
}

variable "allow_branch_to_branch_traffic" {
  type        = bool
  default     = true
  description = "(Optional) Boolean flag to specify whether branch to branch traffic is allowed. Defaults to true."
}

variable "office365_local_breakout_category" {
  type        = string
  default     = "None"
  description = "(Optional) Specifies the Office365 local breakout category. Possible values include: Optimize, OptimizeAndAllow, All, None. Defaults to None."
}

variable "type" {
  type        = string
  default     = "Standard"
  description = "(Optional) Specifies the Virtual WAN type. Possible Values include: Basic and Standard. Defaults to Standard."
}

variable "managed_by" {
  type        = string
  default     = null
  description = "(Optional) The ID of the resource or application that manages this Resource Group."
}

variable "tags" {
  type        = any
  default     = null
  description = "(Optional) A mapping of tags to assign to the Virtual WAN."
}

variable "virtual_hubs" {
  type = map(object({
    deploy_resource_group  = optional(bool)
    resource_group_name    = optional(string)
    location               = optional(string)
    address_prefix         = optional(string)
    hub_routing_preference = optional(string)
    routes = optional(list(object({
      address_prefixes    = list(string)
      next_hop_ip_address = string
    })))
    sku        = optional(string)
    managed_by = optional(string)
    tags       = optional(any)
  }))
  default     = null
  description = "(Optional) A map of Virtual Hubs to create within the Virtual WAN."
}
