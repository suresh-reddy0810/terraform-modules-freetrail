resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.aks_location
  resource_group_name = var.rg_aks_name
  dns_prefix          = "sureshaks"

  default_node_pool {
    name            = "system"
    node_count      = 1
    vm_size         = "Standard_D4s_v3"
    vnet_subnet_id  = var.sub_aks_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "standard"
    service_cidr   = "172.16.0.0/16"
    dns_service_ip = "172.16.0.10"
  }

}
