locals {
  public_subnets = {
    "subnet_1" = {
      name             = "subnet-public-1",
      address_prefixes = "172.30.0.0/20"
    }

    "subnet_2" = {
      name             = "subnet-public-2",
      address_prefixes = "172.30.16.0/20"
    }

    "subnet_3" = {
      name             = "subnet-public-3",
      address_prefixes = "172.30.32.0/20"
    }
  }
}


resource "azurerm_subnet" "subnet_public" {
  for_each = local.public_subnets

  name                 = each.value.name
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [ each.value.address_prefixes ]
}
