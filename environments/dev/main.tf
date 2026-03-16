module "rg" {
    source = "../../modules/rg/"
    rg_name = var.rg_name
    location = var.location
    rg_aks_name = var.rg_aks_name
    aks_location = var.aks_location
}

module "vnet" {
    source = "../../modules/vnet/"
    rg_name = module.rg.rg_name
    location = module.rg.location
    rg_aks_name = module.rg.rg_aks_name
    aks_location = module.rg.aks_location

    vnet_name = var.vnet_name
    vnet_cicdr = var.vnet_cicdr
    sub1_name = var.sub1_name
    sub1_cicdr = var.sub1_cicdr
    sub2_name = var.sub2_name
    sub2_cicdr = var.sub2_cicdr
    nsg_name = var.nsg_name
    vnet1_name = var.vnet1_name
    vnet1_cicdr = var.vnet1_cicdr
    sub_name = var.sub_name
    sub_cicdr = var.sub_cicdr
    
}


module "vm" {
    source = "../../modules/vm/"
    vm_name = var.vm_name
    nic_name = var.nic_name
    rg_name = module.rg.rg_name
    location = module.rg.location
    sub1_id = module.vnet.sub1_id

}

module "storage" {
    source = "../../modules/storage/"
    storage_account_name = var.storage_account_name
    sub2_id = module.vnet.sub2_id
    rg_name = module.rg.rg_name
    location = module.rg.location
}

module "webapp" {
    source = "../../modules/webapp/"
    app_service_name = var.app_service_name
    service_plan_name = var.service_plan_name
    rg_name = module.rg.rg_name
    location = module.rg.location
}


module "aks" {
  source = "../../modules/aks/"

  aks_name      = var.aks_name
  sub_aks_id    = module.vnet.sub_aks_id

  rg_aks_name   = module.rg.rg_aks_name
  aks_location  = module.rg.aks_location
}
