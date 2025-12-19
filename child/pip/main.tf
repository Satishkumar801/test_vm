resource "azurerm_public_ip" "pip1" {
    for_each = var.pip_shukla
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.pip_location
  allocation_method   = "Static"
}
variable "pip_shukla" {}
