variable "location" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
  default = "eastus"
}

variable "app" {
  type        = string
  description = "(Optional) Adds a tag with the application name this resource group belogs to."
  default     = ""
}

variable "environment" {
  type        = string
  description = "(Optional) Environment name. If not specified, this module will use workspace as default value"
  default     = "default"
}

variable "creator" {
  type        = string
  description = "(Optional) Adds a tag indicating the creator of this resource"
  default     = "stackgurdian"
}