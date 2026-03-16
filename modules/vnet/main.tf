resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rg_name
}

# First VNet
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnet_cicdr
}

resource "azurerm_subnet" "sub1" {
  name                 = var.sub1_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.sub1_cicdr
}

resource "azurerm_subnet" "sub2" {
  name                 = var.sub2_name
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.sub2_cicdr
}

# Second VNet
resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1_name
  location            = var.aks_location
  resource_group_name = var.rg_aks_name
  address_space       = var.vnet1_cicdr
}

resource "azurerm_subnet" "sub" {
  name                 = var.sub_name
  resource_group_name  = var.rg_aks_name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.sub_cicdr
}