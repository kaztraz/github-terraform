terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-jdk"
    storage_account_name = "sabackendau3t9s70c5"
    container_name       = "tfstate"
    key                  = "rg.terraform.tfstate.jdk"
  }
}

provider "azurerm" {
  features {}
  
}