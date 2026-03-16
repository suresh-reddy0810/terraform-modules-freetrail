output "vnet_name" {
    value = azurerm_virtual_network.vnet.name
}
output "vnet_cicdr" {
    value = azurerm_virtual_network.vnet.address_space
}
output "sub1_name" {
    value = azurerm_subnet.sub1.name
}
output "sub1_cicdr" {
    value = azurerm_subnet.sub1.address_prefixes
}

output "sub2_name" {
    value = azurerm_subnet.sub2.name
}

output "sub2_cicdr" {
    value = azurerm_subnet.sub2.address_prefixes
}
output "sub1_id" {
value = azurerm_subnet.sub1.id
}
output "sub2_id" {
  value = azurerm_subnet.sub2.id
}
output "vnet_id" {
    value = azurerm_virtual_network.vnet.id
}
output "vnet1_id" {
    value = azurerm_virtual_network.vnet1.id
}
output "vnet1_cicdr" {
    value = azurerm_virtual_network.vnet1.address_space
}
output "vnet1_name" {
    value = azurerm_virtual_network.vnet1.name
}
output "sub_name" {
    value = azurerm_subnet.sub.name
}
output "sub_cicdr" {
    value = azurerm_subnet.sub.address_prefixes
}

output "sub_aks_id" {
  value = azurerm_subnet.sub.id
}