resource "azurerm_resource_group" "rg-m7" {
  name     = var.rg_jdk_m7
  location = var.az_regions[0]
  tags     = var.common_tags
}