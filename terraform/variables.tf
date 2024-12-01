# Location
variable "az_regions" {
  type        = list(string)
  description = "Azure regions for resources"
  default     = ["norwayeast", "westeurope", "uksouth", "northeurope"]
}

variable "rg_backend_name" {
  type        = string
  description = "Resource group name for backend resources"
}

variable "sa_backend_name" {
  type        = string
  description = "Storage account name for backend resources"
}

variable "sc_backend_name" {
  type        = string
  description = "Storage container name for backend resources"
}

variable "kv_backend_name" {
  type        = string
  description = "Key vault name for backend resources"
}

variable "sa_backend_accesskey_name" {
  type        = string
  description = "Storage account access key for backend resources"
}

# Tags
variable "common_tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    project = "IaC2024"
    module  = "m06"
    owner   = "jdk"
  }
}

