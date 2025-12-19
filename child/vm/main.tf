resource "azurerm_linux_virtual_machine" "vm1" {
    for_each = var.vm_shukla
  name                = each.value.vm_name
  resource_group_name =each.value.rg_name
  location            = each.value.vm_location
   size                = "Standard_D2s_v3"
  admin_username      = "adminuser"
  admin_password = "zaq1ZAQ!"
  disable_password_authentication = false
   network_interface_ids = [data.azurerm_network_interface.data_nic.id]

os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
data "azurerm_network_interface" "data_nic" {
  name                = "todo_nic"
  resource_group_name = "march"
}
variable "vm_shukla" {
  type = map(any)
}