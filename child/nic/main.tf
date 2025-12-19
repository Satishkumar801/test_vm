resource "azurerm_network_interface" "nic1" {
    for_each = var.nic_shukla
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.rg_name

  ip_configuration {
    
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.data_snet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.data_pip.id
  }
}

data "azurerm_subnet" "data_snet" {
  name                 = "todo_snet"
  virtual_network_name = "test_vnet1"
  resource_group_name  = "march"
}

data "azurerm_public_ip" "data_pip" {
  name                = "todo_pip"
  resource_group_name = "march"
}

variable "nic_shukla" {
    type = map(any)
  
}