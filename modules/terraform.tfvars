tiwari = {
  rg1 = {
    rg_name     = "march"
    rg_location = "central india"
  }
}
# stg_tiwari = {
#   stg1 = {
#     stg_name                 = "sunday99999"
#     rg_name                  = "march"
#     stg_location             = "central india"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
#   stg2 = {
#     stg_name                 = "monday99999"
#     rg_name                  = "march"
#     stg_location             = "central india"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"
#   }
# }
vnet_tiwari = {
  vnet1 = {
    vnet_name     = "test_vnet1"
    vnet_location = "central india"
    rg_name       = "march"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["10.0.0.4", "10.0.0.5"]
  }
}
snet_tiwari = {
  snet = {
    snet_name        = "todo_snet"
    rg_name          = "march"
    vnet_name        = "test_vnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
}
pip_tiwari = {
  pip1 = {
    pip_name     = "todo_pip"
    rg_name      = "march"
    pip_location = "central india"
  }
}
nic_tiwari = {
  nic1 = {
    nic_name     = "todo_nic"
    nic_location = "central india"
    rg_name      = "march"
  }
}
vm_tiwari = {
  vm1 = {
    vm_name     = "todovm1"
    rg_name     = "march"
    vm_location = "central india"
  }
  # vm2 = {
  #   vm_name     = "todovm2"
  #   rg_name     = "march"
  #   vm_location = "central india"
  # }
  # vm3 = {
  #   vm_name     = "todovm3"
  #   rg_name     = "march"
  #   vm_location = "central india"
  # }
}

