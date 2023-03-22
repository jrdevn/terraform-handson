terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.46.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "jhonatajrremotestate"
    container_name       = "remotestate"
    key                  = "azure-vm-module-remote/terraform.tfstate"
  }
}


provider "azurerm" {
  features {

  }
}

module "network" {
  source  = "Azure/network/azurerm"
  version = "3.5.0"

  depends_on          = [azurerm_resource_group.resource_group]
  resource_group_name = azurerm_resource_group.resource_group.name
}
