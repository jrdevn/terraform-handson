resource "azurerm_resource_group" "resource_group" {

  for_each = {
    "EUA"    = "East US"
    "Europa" = "West Europe"
    "Asia"   = "Japan East"
  }

  name     = each.key
  location = each.value
  tags     = local.commont_tags
}
