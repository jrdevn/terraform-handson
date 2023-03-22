output "location_resource_group_eua" {
  value = azurerm_resource_group.resource_group["EUA"].location
}

output "location_resource_group_europa" {
  value = azurerm_resource_group.resource_group["Europa"].location
}

output "location_resource_group_asia" {
  value = azurerm_resource_group.resource_group["Asia"].location
}