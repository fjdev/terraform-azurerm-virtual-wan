variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Virtual WAN. Changing this forces a new resource to be created."
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

variable "tags" {
  type        = any
  default     = null
  description = "(Optional) A mapping of tags to assign to the Virtual WAN."
}
