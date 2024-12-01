locals {
  workspace_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name = "${var.rg_name}-${local.workspace_suffix}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = var.az_regions[0]
  tags     = var.common_tags
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
  
}