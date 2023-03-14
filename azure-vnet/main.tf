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
    key                  = "azure-vnet/terraform.tfstate"
  }
}


provider "azurerm" {
  features {

  }
}