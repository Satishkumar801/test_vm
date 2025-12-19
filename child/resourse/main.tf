resource "azurerm_resource_group" "rg98" {
    for_each = var.shukla
  name     = each.value.rg_name
  location = each.value.rg_location
}
variable "shukla" {
    type = map(any)
  
}