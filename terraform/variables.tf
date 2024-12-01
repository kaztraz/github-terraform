variable "az_regions" {
  type        = list(string)
  description = "Azure regions for resources"
  default     = ["norwayeast", "westeurope", "uksouth", "northeurope"]
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "common_tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    project = "IaC2024"
    module  = "m07"
    owner   = "jdk"
  }
}

