
# resource "azurerm_storage_account" "stg1" {
#     for_each = var.stg_shukla
#   name                     = each.value.stg_name
#   resource_group_name      = each.value.rg_name
#   location                 = each.value.stg_location
#   account_tier             = each.value.account_tier
#   account_replication_type = each.value.account_replication_type
# }
# variable "stg_shukla" {
#     type = map(any)
  
# }