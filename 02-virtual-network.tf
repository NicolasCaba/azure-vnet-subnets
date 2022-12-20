resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  address_space       = ["${var.vnet_address_space}"]
}
