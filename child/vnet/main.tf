resource "azurerm_virtual_network" "vnet1" {
    for_each = var.vnet_shukla
  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers
}
variable "vnet_shukla" {
  type = map(any)
}