resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}
resource "azurerm_resource_group" "aks_rg1" {
  name     = var.rg_aks_name
  location = var.aks_location
}

