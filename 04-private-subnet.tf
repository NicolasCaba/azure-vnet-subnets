locals {
  private_subnets = {
    "subnet_1" = {
      name             = "subnet-private-1",
      address_prefixes = "172.30.48.0/20"
    }

    "subnet_2" = {
      name             = "subnet-private-2",
      address_prefixes = "172.30.64.0/20"
    }

    "subnet_3" = {
      name             = "subnet-private-3",
      address_prefixes = "172.30.80.0/20"
    }
  }
}

resource "azurerm_subnet" "subnet_private" {
  for_each = local.private_subnets

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [ each.value.address_prefixes ]
}
