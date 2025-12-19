resource "azurerm_subnet" "snet1" {
    for_each = var.snet_shukla
  name                 = each.value.snet_name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}
variable "snet_shukla" {
    type = map(any)
  
}