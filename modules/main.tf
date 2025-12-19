module "rg_module" {
  source = "../child/resourse"
  shukla = var.tiwari
}
# module "stg_module" {
#   depends_on = [module.rg_module]
#   source     = "../child/storage"
#   stg_shukla = var.stg_tiwari

# }
module "vnet_module" {
  depends_on  = [module.rg_module]
  source      = "../child/vnet"
  vnet_shukla = var.vnet_tiwari

}
module "snet_module" {
  depends_on  = [module.vnet_module]
  source      = "../child/subnet"
  snet_shukla = var.snet_tiwari
}
module "pip_module" {
  depends_on = [module.rg_module]
  source     = "../child/pip"
  pip_shukla = var.pip_tiwari

}
module "nic_module" {
  depends_on = [module.pip_module, module.snet_module]
  source     = "../child/nic"
  nic_shukla = var.nic_tiwari

}
module "vm_module" {
  depends_on = [module.nic_module]
  source     = "../child/vm"
  vm_shukla  = var.vm_tiwari

}

